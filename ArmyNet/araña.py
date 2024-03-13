


import json
import random
import time
import argparse

MAX_URL_LENGTH = 256
MAX_JSON_ENTRIES = 100

# Lista de User-Agents predefinidos
DEFAULT_USER_AGENTS = [
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36",
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15"
    # Agrega más User-Agents según sea necesario
]

# Función para guardar una entrada en el archivo JSON
def save_entry(entry, json_file):
    json.dump(entry, json_file)
    json_file.write('\n')

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Indexar direcciones web visitadas en un archivo JSON")
    parser.add_argument("-s", "--use_custom_user_agents", action="store_true", help="Usar una lista personalizada de User-Agents")
    args = parser.parse_args()

    if args.use_custom_user_agents:
        # Si se especifica la opción -s, se solicitará al usuario que proporcione su lista de User-Agents
        user_agents = input("Introduce la lista de User-Agents separados por comas: ").split(",")
    else:
        # De lo contrario, se utilizarán los User-Agents predefinidos
        user_agents = DEFAULT_USER_AGENTS

    json_entries = []

    # Ejemplo de direcciones web visitadas
    visited_urls = [
        "https://www.example1.com",
        "https://www.example2.com",
        "https://www.example3.com"
        # Agrega más URLs según sea necesario
    ]

    # Crear y guardar las entradas en el archivo JSON
    for url in visited_urls:
        entry = {
            "url": url,
            "user_agent": random.choice(user_agents),
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
