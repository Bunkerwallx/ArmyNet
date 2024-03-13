


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define MAX_URL_LENGTH 256
#define MAX_USER_AGENT_LENGTH 256
#define MAX_JSON_ENTRIES 100

// Estructura para representar una entrada en el archivo JSON
typedef struct {
    char name[MAX_URL_LENGTH];
    char url[MAX_URL_LENGTH];
    char user_agent[MAX_USER_AGENT_LENGTH];
    char resource_type[20];  // Tipo de recurso: URL, Robot, Imagen, Video, etc.
    time_t timestamp;
} JsonEntry;

// Función para guardar una entrada en el archivo JSON
void save_entry(JsonEntry *entry, FILE *json_file) {
    fprintf(json_file, "{\"name\": \"%s\", \"url\": \"%s\", \"user_agent\": \"%s\", \"resource_type\": \"%s\", \"timestamp\": %ld}\n",
            entry->name, entry->url, entry->user_agent, entry->resource_type, (long)entry->timestamp);
}

int main() {
    JsonEntry json_entries[MAX_JSON_ENTRIES];
    int num_entries = 0;

    // Ejemplo de direcciones web visitadas
    const char *url_names[] = {
        "Página principal",
        "Blog",
        "Galería de fotos",
        "Video tutorial",
        // Agrega más nombres de URLs según sea necesario
    };

    const char *urls[] = {
        "https://www.example.com",
        "https://www.example.com/blog",
        "https://www.example.com/gallery",
        "https://www.example.com/video",
        // Agrega más URLs según sea necesario
    };

    const char *robots[] = {
        "https://www.example.com/robots.txt",
        // Agrega más URLs de robots según sea necesario
    };

    const char *images[] = {
        "https://www.example.com/image1.jpg",
        "https://www.example.com/image2.png",
        // Agrega más URLs de imágenes según sea necesario
    };

    const char *videos[] = {
        "https://www.example.com/video1.mp4",
        "https://www.example.com/video2.mp4",
        // Agrega más URLs de vídeos según sea necesario
    };

    // Lista de User-Agents predefinidos
    const char *default_user_agents[] = {
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36",
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0",
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15"
        // Agrega más User-Agents según sea necesario
    };

    // Crear y guardar las entradas en el archivo JSON para URLs
    for (int i = 0; i < sizeof(urls) / sizeof(urls[0]); i++) {
        JsonEntry entry;
        strncpy(entry.name, url_names[i], MAX_URL_LENGTH);
        strncpy(entry.url, urls[i], MAX_URL_LENGTH);
        strncpy(entry.user_agent, default_user_agents[rand() % (sizeof(default_user_agents) / sizeof(default_user_agents[0]))], MAX_USER_AGENT_LENGTH);
        strncpy(entry.resource_type, "URL", 20);
        entry.timestamp = time(NULL);
        json_entries[num_entries++] = entry;
    }

    // Crear y guardar las entradas en el archivo JSON para robots
    for (int i = 0; i < sizeof(robots) / sizeof(robots[0]); i++) {
        JsonEntry entry;
        strncpy(entry.name, "", MAX_URL_LENGTH);  // No hay un nombre específico para los robots
        strncpy(entry.url, robots[i], MAX_URL_LENGTH);
        strncpy(entry.user_agent, default_user_agents[rand() % (sizeof(default_user_agents) / sizeof(default_user_agents[0]))], MAX_USER_AGENT_LENGTH);
        strncpy(entry.resource_type, "Robot", 20);
        entry.timestamp = time(NULL);
        json_entries[num_entries++] = entry;
    }

    // Crear y guardar las entradas en el archivo JSON para imágenes
    for (int i = 0; i < sizeof(images) / sizeof(images[0]); i++) {
        JsonEntry entry;
        strncpy(entry.name, "", MAX_URL_LENGTH);  // No hay un nombre específico para las imágenes
        strncpy(entry.url, images[i], MAX_URL_LENGTH);
        strncpy(entry.user_agent, default_user_agents[rand() % (sizeof(default_user_agents) / sizeof(default_user_agents[0]))], MAX_USER_AGENT_LENGTH);
        strncpy(entry.resource_type, "Imagen", 20);
        entry.timestamp = time(NULL);
        json_entries[num_entries++] = entry;
    }

    // Crear y guardar las entradas en el archivo JSON para vídeos
    for (int i = 0; i < sizeof(videos) / sizeof(videos[0]); i++) {
        JsonEntry entry;
        strncpy(entry.name, "", MAX_URL_LENGTH);  // No hay un nombre específico para los vídeos
        strncpy(entry.url, videos[i], MAX_URL_LENGTH);
        strncpy(entry.user_agent, default_user_agents[rand() % (sizeof(default_user_agents) / sizeof(default_user_agents[0]))], MAX_USER_AGENT_LENGTH);
        strncpy(entry.resource_type, "Video", 20);
        entry.timestamp = time(NULL);
        json_entries[num_entries++] = entry;
    }

    // Guardar las entradas en el archivo JSON
    FILE *json_file = fopen("visited_urls.json", "w");
    if (json_file == NULL) {
        fprintf(stderr, "Error al abrir el archivo JSON\n");
        return 1;
    }

    fprintf(json_file, "[\n");
    for (fprintf(json_file, "[\n");
    for (int i = 0; i < num_entries; i++) {
        save_entry(&json_entries[i], json_file);
        if (i < num_entries - 1) {
            fprintf(json_file, ",\n");
        }
    }
    fprintf(json_file, "]\n");

    fclose(json_file);

    printf("Las direcciones web visitadas se han guardado en visited_urls.json\n");

    return 0;
}