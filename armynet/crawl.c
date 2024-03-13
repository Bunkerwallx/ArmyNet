



#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define MAX_URL_LENGTH 256
#define MAX_USER_AGENT_LENGTH 256
#define MAX_JSON_ENTRIES 100

// Estructura para representar una entrada en el archivo JSON
typedef struct {
    char url[MAX_URL_LENGTH];
    char user_agent[MAX_USER_AGENT_LENGTH];
    time_t timestamp;
} JsonEntry;

// Función para guardar una entrada en el archivo JSON
void save_entry(const JsonEntry* entry, FILE* json_file) {
    fprintf(json_file, "{\"url\": \"%s\", \"user_agent\": \"%s\", \"timestamp\": %ld}\n",
            entry->url, entry->user_agent, (long)entry->timestamp);
}

int main() {
    JsonEntry json_entries[MAX_JSON_ENTRIES];
    int num_entries = 0;

    // Aquí iría el código para obtener las direcciones web visitadas y el User-Agent

    // Ejemplo de entrada de prueba
    JsonEntry entry;
    strncpy(entry.url, "https://www.example.com", MAX_URL_LENGTH);
    strncpy(entry.user_agent, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36", MAX_USER_AGENT_LENGTH);
    entry.timestamp = time(NULL);
    json_entries[num_entries++] = entry;

    // Guardar las entradas en el archivo JSON
    FILE* json_file = fopen("visited_urls.json", "w");
    if (json_file == NULL) {
        fprintf(stderr, "Error al abrir el archivo JSON\n");
        return 1;
    }

    fprintf(json_file, "[\n");
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