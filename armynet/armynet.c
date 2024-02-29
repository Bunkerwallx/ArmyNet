
#include <iostream>
#include <string>
#include <fstream>
#include <stdexcept>
#include <cryptopp/aes.h>
#include <cryptopp/modes.h>
#include <cryptopp/osrng.h>
#include <cryptopp/filters.h>
#include <cryptopp/hex.h>
#include <vector>
#include <iomanip>

// Definiciones de tamaño
#define SALT_SIZE 16
#define KEY_SIZE 32
#define IV_SIZE 16

// Espacio de nombres para CryptoPP
using namespace CryptoPP;

// Estructura para manejar los datos del archivo
typedef struct {
    std::string filename; // nombre del archivo
    std::string out_filename; // nombre del archivo de salida
    std::vector<byte> salt; // sal para el cifrado
    std::vector<byte> iv; // vector de inicialización
} FileObject;

// Función para cifrar el archivo
void aes_encrypt_file(FileObject *file, const SecByteBlock &key) {
    // Abre el archivo de entrada
    std::ifstream in_file(file->filename, std::ios::binary);
    if (!in_file) {
        // Lanza error si no puede abrir el archivo
        throw std::runtime_error("No se pudo abrir el archivo de entrada: " + file->filename);
    }

    // Abre el archivo de salida
    std::ofstream out_file(file->out_filename, std::ios::binary);
    if (!out_file) {
        // Lanza error si no puede abrir el archivo
        throw std::runtime_error("No se pudo abrir el archivo de salida: " + file->out_filename);
    }

    try {
        // Crea el objeto de cifrado
        CBC_Mode<AES>::Encryption enc;
        enc.SetKeyWithIV(key, KEY_SIZE, file->iv.data());

        // Cifra el archivo y lo guarda en el archivo de salida
        FileSource(in_file, true, new StreamTransformationFilter(enc, new FileSink(out_file)));
    } catch (const Exception &ex) {
        // Lanza error si ocurre una excepción
        throw std::runtime_error("Error al cifrar el archivo: " + std::string(ex.what()));
    }
}

// Función para generar sal aleatoria
std::vector<byte> generate_salt() {
    // Crea un vector para la sal
    std::vector<byte> salt(SALT_SIZE);

    // Genera la sal aleatoria
    AutoSeededRandomPool rng;
    rng.GenerateBlock(salt.data(), SALT_SIZE);

    return salt;
}

// Función para generar la clave a partir de la contraseña y la sal
void generate_key(const std::string &password, const std::vector<byte> &salt, SecByteBlock &key) {
    PKCS5_PBKDF2_HMAC<SHA256> pbkdf2;
    pbkdf2.DeriveKey(key, key.size(), 0, (byte *)password.data(), password.size(), salt.data(), SALT_SIZE, 10000);
}

// Función principal
int main(int argc, char **argv) {
    if (argc != 3) {
        // Muestra el uso correcto si los argumentos no son correctos
        std::cerr << "Uso: " << argv[0] << " <archivo_entrada> <archivo_salida>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string password;

    // Solicita la contraseña al usuario
    std::cout << "Introduce la contraseña: ";
    std::cin >> password;

    // Genera la sal
    auto salt = generate_salt();

    // Genera la clave
    SecByteBlock key(KEY_SIZE);
    generate_key(password, salt, key);

    // Crea el objeto    // del archivo
    FileObject file;
    file.filename = argv[1];
    file.out_filename = argv[2];
    file.salt = salt;

    // Genera el vector de inicialización
    AutoSeededRandomPool rng;
    file.iv.resize(IV_SIZE);
    rng.GenerateBlock(file.iv.data(), file.iv.size());

    try {
        // Cifra el archivo
        aes_encrypt_file(&file, key);
        std::cout << "El archivo ha sido cifrado exitosamente!" << std::endl;
    } catch (const std::exception &ex) {
        // Muestra el error si ocurre uno
        std::cerr << "Error: " << ex.what() << std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
