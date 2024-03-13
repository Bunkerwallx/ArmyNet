



import json
import time

MAX_URL_LENGTH = 256
MAX_USER_AGENT_LENGTH = 256
MAX_JSON_ENTRIES = 100

# Función para guardar una entrada en el archivo JSON
def save_entry(entry, json_file):
    json.dump(entry, json_file)
    json_file.write('\n')

if __name__ == "__main__":
    json_entries = []

    # Aquí iría el código para obtener las direcciones web visitadas y el User-Agent

    # Ejemplo de entrada de prueba
    entry = {
        "url": "https://www.example.com",
        "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36",
        "timestamp": int(time.time())
    }
    json_entries.append(entry)

    # Guardar las entradas en el archivo JSON
    with open("visited_urls.json", "w") as json_file:
        json_file.write("[\n")
        for i, entry in enumerate(json_entries):
            save_entry(entry, json_file)
            if i < len(json_entries) - 1:
                json_file.write(",\n")
        json_file.write("]\n")

    print("Las direcciones web visitadas se han guardado en visited_urls.json")
