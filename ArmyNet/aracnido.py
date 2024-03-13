


import json
import random
import time

MAX_URL_LENGTH = 256
MAX_USER_AGENT_LENGTH = 256
MAX_JSON_ENTRIES = 100

# Estructura para representar una entrada en el archivo JSON
class JsonEntry:
    def __init__(self, name, url, user_agent, resource_type, timestamp):
        self.name = name
        self.url = url
        self.user_agent = user_agent
        self.resource_type = resource_type
        self.timestamp = timestamp

# Función para guardar una entrada en el archivo JSON
def save_entry(entry, json_file):
    json.dump(entry.__dict__, json_file)
    json_file.write('\n')

if __name__ == "__main__":
    json_entries = []

    # Ejemplo de direcciones web visitadas
    url_names = [
        "Página principal",
        "Blog",
        "Galería de fotos",
        "Video tutorial"
        # Agrega más nombres de URLs según sea necesario
    ]

    urls = [
        "https://www.example.com",
        "https://www.example.com/blog",
        "https://www.example.com/gallery",
        "https://www.example.com/video"
        # Agrega más URLs según sea necesario
    ]

    robots = [
        "https://www.example.com/robots.txt"
        # Agrega más URLs de robots según sea necesario
    ]

    images = [
        "https://www.example.com/image1.jpg",
        "https://www.example.com/image2.png"
        # Agrega más URLs de imágenes según sea necesario
    ]

    videos = [
        "https://www.example.com/video1.mp4",
        "https://www.example.com/video2.mp4"
        # Agrega más URLs de vídeos según sea necesario
    ]

    # Lista de User-Agents predefinidos
    default_user_agents = [
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36",
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0",
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15"
        # Agrega más User-Agents según sea necesario
    ]

    # Crear y guardar las entradas en el archivo JSON para URLs
    for name, url in zip(url_names, urls):
        entry = JsonEntry(name, url, random.choice(default_user_agents), "URL", int(time.time()))
        json_entries.append(entry)

    # Crear y guardar las entradas en el archivo JSON para robots
    for robot in robots:
        entry = JsonEntry("", robot, random.choice(default_user_agents), "Robot", int(time.time()))
        json_entries.append(entry)

    # Crear y guardar las entradas en el archivo JSON para imágenes
    for image in images:
        entry = JsonEntry("", image, random.choice(default_user_agents), "Imagen", int(time.time()))
        json_entries.append(entry)

    # Crear y guardar las entradas en el archivo JSON para vídeos
    for video in videos:
        entry = JsonEntry("", video, random.choice(default_user_agents), "Video", int(time.time()))
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
