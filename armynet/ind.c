#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define MAX_URL_LENGTH 256
#define MAX_USER_AGENT_LENGTH 256
#define MAX_JSON_ENTRIES 100

typedef struct {
    char name[MAX_URL_LENGTH];
    char url[MAX_URL_LENGTH];
    char user_agent[MAX_USER_AGENT_LENGTH];
    char resource_type[20];  // Tipo de recurso: URL, Robot, Imagen, Video, etc.
    time_t timestamp;
} JsonEntry;

void save_entry(JsonEntry *entry, FILE *json_file) {
    fprintf(json_file, "{\"name\": \"%s\", \"url\": \"%s\", \"user_agent\": \"%s\", \"resource_type\": \"%s\", \"timestamp\": %ld}\n",
            entry->name, entry->url, entry->user_agent, entry->resource_type, (long)entry->timestamp);
}

void create_and_save_entries(const char *names[], const char *urls[], const char *user_agents[], const char *resource_type, int num_urls, JsonEntry *json_entries, int *num_entries) {
    for (int i = 0; i < num_urls; i++) {
        JsonEntry entry;
        strncpy(entry.name, names[i], MAX_URL_LENGTH);
        strncpy(entry.url, urls[i], MAX_URL_LENGTH);
        strncpy(entry.user_agent, user_agents[rand() % (sizeof(user_agents) / sizeof(user_agents[0]))], MAX_USER_AGENT_LENGTH);
        strncpy(entry.resource_type, resource_type, 20);
        entry.timestamp = time(NULL);
        json_entries[(*num_entries)++] = entry;
    }
}

int main() {
    JsonEntry json_entries[MAX_JSON_ENTRIES];
    int num_entries = 0;

    const char *url_names[] = {
        "Página principal",
        "Blog",
        "Galería de fotos",
        "Video tutorial",
    };

    const char *urls[] = {
        "https://www.example.com",
        "https://www.example.com/blog",
        "https://www.example.com/gallery",
        "https://www.example.com/video",
    };

    const char *robots[] = {
        "https://www.example.com/robots.txt",
    };

    const char *images[] = {
        "https://www.example.com/image1.jpg",
        "https://www.example.com/image2.png",
    };

    const char *videos[] = {
        "https://www.example.com/video1.mp4",
        "https://www.example.com/video2.mp4",
    };

    const char *default_user_agents[] = {
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36",
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0",
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15"
    };

    // Crear y guardar las entradas en el archivo JSON para URLs
    create_and_save_entries(url_names, urls, default_user_agents, "URL", sizeof(urls) / sizeof(urls[0]), json_entries, &num_entries);

    // Crear y guardar las entradas en el archivo JSON para robots
    create_and_save_entries(NULL, robots, default_user_agents, "Robot", sizeof(robots) / sizeof(robots[0]), json_entries, &num_entries);

    // Crear y guardar las entradas en el archivo JSON para imágenes
    create_and_save_entries(NULL, images, default_user_agents, "Imagen", sizeof(images) / sizeof(images[0]), json_entries, &num_entries);

    // Crear y guardar las entradas en el archivo JSON para vídeos
    create_and_save_entries(NULL, videos, default_user_agents, "Video", sizeof(videos) / sizeof(videos[0]), json_entries, &num_entries);

    // Guardar las entradas en el archivo JSON
    FILE *json_file = fopen("visited_urls.json", "w");
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
