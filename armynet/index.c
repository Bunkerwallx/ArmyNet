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
    char resource_type[20];
    time_t timestamp;
} JsonEntry;

void save_entry(JsonEntry *entry, FILE *json_file) {
    fprintf(json_file, "{\"name\": \"%s\", \"url\": \"%s\", \"user_agent\": \"%s\", \"resource_type\": \"%s\", \"timestamp\": %ld}\n",
            entry->name, entry->url, entry->user_agent, entry->resource_type, (long)entry->timestamp);
}

void create_entry(JsonEntry *entry, const char *name, const char *url, const char *user_agent, const char *resource_type) {
    strncpy(entry->name, name, MAX_URL_LENGTH);
    strncpy(entry->url, url, MAX_URL_LENGTH);
    strncpy(entry->user_agent, user_agent, MAX_USER_AGENT_LENGTH);
    strncpy(entry->resource_type, resource_type, 20);
    entry->timestamp = time(NULL);
}

int main() {
    JsonEntry json_entries[MAX_JSON_ENTRIES];
    int num_entries = 0;

    const char *default_user_agents[] = {
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36",
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0",
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15"
    };

    // Crear y guardar las entradas en el archivo JSON para URLs, robots, imágenes y vídeos
    const char *url_names[] = {"Página principal", "Blog", "Galería de fotos", "Video tutorial"};
    const char *urls[] = {"https://www.example.com", "https://www.example.com/blog", "https://www.example.com/gallery", "https://www.example.com/video"};
    const char *robots[] = {"https://www.example.com/robots.txt"};
    const char *images[] = {"https://www.example.com/image1.jpg", "https://www.example.com/image2.png"};
    const char *videos[] = {"https://www.example.com/video1.mp4", "https://www.example.com/video2.mp4"};

    for (int i = 0; i < sizeof(urls) / sizeof(urls[0]); i++) {
        create_entry(&json_entries[num_entries++], url_names[i], urls[i], default_user_agents[rand() % (sizeof(default_user_agents) / sizeof(default_user_agents[0])), "URL");
    }

    for (int i = 0; i < sizeof(robots) / sizeof(robots[0]); i++) {
        create_entry(&json_entries[num_entries++], "", robots[i], default_user_agents[rand() % (sizeof(default_user_agents) / sizeof(default_user_agents[0])), "Robot");
    }

    for (int i = 0; i < sizeof(images) / sizeof(images[0]); i++) {
        create_entry(&json_entries[num_entries++], "", images[i], default_user_agents[rand() % (sizeof(default_user_agents) / sizeof(default_user_agents[0])), "Imagen");
    }

    for (int i = 