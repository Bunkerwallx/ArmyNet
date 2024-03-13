


require 'json'

MAX_URL_LENGTH = 256
MAX_USER_AGENT_LENGTH = 256
MAX_JSON_ENTRIES = 100

# Función para guardar una entrada en el archivo JSON
def save_entry(entry, json_file)
  json_file.puts(JSON.dump(entry))
end

if __FILE__ == $PROGRAM_NAME
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
  url_names.zip(urls).each do |name, url|
    entry = {
      name: name,
      url: url,
      user_agent: default_user_agents.sample,
      resource_type: "URL",
      timestamp: Time.now.to_i
    }
    json_entries << entry
  end

  # Crear y guardar las entradas en el archivo JSON para robots
  robots.each do |robot|
    entry = {
      name: "",
      url: robot,
      user_agent: default_user_agents.sample,
      resource_type: "Robot",
      timestamp: Time.now.to_i
    }
    json_entries << entry
  end

  # Crear y guardar las entradas en el archivo JSON para imágenes
  images.each do |image|
    entry = {
      name: "",
      url: image,
      user_agent: default_user_agents.sample,
      resource_type: "Imagen",
      timestamp: Time.now.to_i
    }
    json_entries << entry
  end

  # Crear y guardar las entradas en el archivo JSON para vídeos
  videos.each do |video|
    entry = {
      name: "",
      url: video,
      user_agent: default_user_agents.sample,
      resource_type: "Video",
      timestamp: Time.now.to_i
    }
    json_entries << entry
  end

  # Guardar las entradas en el archivo JSON
  File.open("visited_urls.json", "w") do |json_file|
    json_file.puts("[")
    json_entries.each_with_index do |entry, idx|
      save_entry(entry, json_file)
      json_file.puts(",") if idx < json_entries.size - 1
    end
    json_file.puts("]")
  end

  puts "Las direcciones web visitadas se han guardado en visited_urls.json"
end