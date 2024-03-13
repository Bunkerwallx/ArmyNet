


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
void save_entry(JsonEntry *entry, FILE *json_file) {
    fprintf(json_file, "{\"url\": \"%s\", \"user_agent\": \"%s\", \"timestamp\": %ld}\n",
            entry->url, entry->user_agent, (long)entry->timestamp);
}

int main(int argc, char *argv[]) {
    JsonEntry json_entries[MAX_JSON_ENTRIES];
    int num_entries = 0;

    // Lista de User-Agents predefinidos
    const char *default_user_agents[] = {
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36",
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0",
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15"
        // Agrega más User-Agents según sea necesario
    };

    const char **user_agents;
    int num_user_agents;

    // Verificar si se proporcionó la opción -s para usar una lista personalizada de User-Agents
    if (argc > 1 && strcmp(argv[1], "-s") == 0) {
        // Si se especifica la opción -s, se utilizará una lista personalizada de User-Agents
        printf("Introduce la lista de User-Agents separados por comas: ");
        char input[MAX_USER_AGENT_LENGTH * MAX_JSON_ENTRIES];
        fgets(input, sizeof(input), stdin);
        // Eliminar el carácter de nueva línea del final del input
        input[strcspn(input, "\n")] = 0;

        // Dividir el input en User-Agents individuales
        char *token = strtok(input, ",");
        num_user_agents = 0;
        user_agents = malloc(MAX_JSON_ENTRIES * sizeof(char *));
        while (token != NULL && num_user_agents < MAX_JSON_ENTRIES) {
            user_agents[num_user_agents++] = strdup(token);
            token = strtok(NULL, ",");
        }
    } else {
        // De lo contrario, se utilizarán los User-Agents predefinidos
        num_user_agents = sizeof(default_user_agents) / sizeof(default_user_agents[0]);
        user_agents = default_user_agents;
    }

    // Ejemplo de direcciones web visitadas
    const char *visited_urls[] = {
        "https://www.example1.com",
        "https://www.example2.com",
        "https://www.example3.com"
        // Agrega más URLs según sea necesario
    };

    // Crear y guardar las entradas en el archivo JSON
    for (int i = 0; i < sizeof(visited_urls) / sizeof(visited_urls[0]); i++) {
        JsonEntry entry;
        strncpy(entry.url, visited_urls[i], MAX_URL_LENGTH);
        strncpy(entry.user_agent, user_agents[rand() % num_user_agents], MAX_USER_AGENT_LENGTH);
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
    for (int i = 0; i < num_entries; i++) {
        save_entry(&json_entries[i], json_file);
        if (i < num_entries - 1) {
            fprintf(json_file, ",\n");
        }
    }
    fprintf(json_file, "]\n");

    fclose(json_file);

    printf("Las direcciones web visitadas se han guardado en visited_urls.json\n");

    // Liberar memoria de User-Agents personalizados
    if (argc > 1 && strcmp(argv[1], "-s") == 0) {
        for (int i = 0; i < num_user_agents; i++) {
            free((char *)user_agents[i]);
        }
        free(user_agents);
    }

    return 0;
}