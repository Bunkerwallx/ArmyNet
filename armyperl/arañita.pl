



use strict;
use warnings;
use JSON;
use Net::OpenSSH;

# Código para guardar las entradas en el archivo JSON...

# Función para establecer una conexión SSH
sub connect_to_ssh_server {
    my ($host, $user, $password) = @_;

    my $ssh = Net::OpenSSH->new($host, user => $user, password => $password);
    die "Conexión SSH fallida: " . $ssh->error if $ssh->error;

    return $ssh;
}

# Conexión SSH a un servidor remoto (VPS)
my $ssh = connect_to_ssh_server('example.com', 'username', 'password');

# Ejecutar comandos en el servidor remoto
my $output = $ssh->capture("ls -l");
print "Resultado de 'ls -l' en el servidor remoto:\n$output\n";

# Cerrar la conexión SSH
$ssh->disconnect;
use constant MAX_URL_LENGTH => 256;
use constant MAX_USER_AGENT_LENGTH => 256;
use constant MAX_JSON_ENTRIES => 100;

# Función para guardar una entrada en el archivo JSON
sub save_entry {
    my ($entry, $json_file) = @_;
    print $json_file encode_json($entry) . "\n";
}

my @json_entries;

# Ejemplo de direcciones web visitadas
my @url_names = (
    "Página principal",
    "Blog",
    "Galería de fotos",
    "Video tutorial"
    # Agrega más nombres de URLs según sea necesario
);

my @urls = (
    "https://www.example.com",
    "https://www.example.com/blog",
    "https://www.example.com/gallery",
    "https://www.example.com/video"
    # Agrega más URLs según sea necesario
);

my @robots = (
    "https://www.example.com/robots.txt"
    # Agrega más URLs de robots según sea necesario
);

my @images = (
    "https://www.example.com/image1.jpg",
    "https://www.example.com/image2.png"
    # Agrega más URLs de imágenes según sea necesario
);

my @videos = (
    "https://www.example.com/video1.mp4",
    "https://www.example.com/video2.mp4"
    # Agrega más URLs de vídeos según sea necesario
);

# Lista de User-Agents predefinidos
my @default_user_agents = (
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36",
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15"
    # Agrega más User-Agents según sea necesario
);

# Crear y guardar las entradas en el archivo JSON para URLs
for my $i (0 .. $#url_names) {
    my $entry = {
        name => $url_names[$i],
        url => $urls[$i],
        user_agent => $default_user_agents[rand @default_user_agents],
        resource_type => "URL",
        timestamp => time()
    };
    push @json_entries, $entry;
}

# Crear y guardar las entradas en el archivo JSON para robots
for my $robot (@robots) {
    my $entry = {
        name => "",
        url => $robot,
        user_agent => $default_user_agents[rand @default_user_agents],
        resource_type => "Robot",
        timestamp => time()
    };
    push @json_entries, $entry;
}

# Crear y guardar las entradas en el archivo JSON para imágenes
for my $image (@images) {
    my $entry = {
        name => "",
        url => $image,
        user_agent => $default_user_agents[rand @default_user_agents],
        resource_type => "Imagen",
        timestamp => time()
    };
    push @json_entries, $entry;
}

# Crear y guardar las entradas en el archivo JSON para vídeos
for my $video (@videos) {
    my $entry = {
        name => "",
        url => $video,
        user_agent => $default_user_agents[rand @default_user_agents],
        resource_type => "Video",
        timestamp => time()
    };
    push @json_entries, $entry;
}

# Guardar las entradas en el archivo JSON
open my $json_file, '>', "visited_urls.json" or die "No se puede abrir visited_urls.json: $!";
print $json_file "[\n";
for my $i (0 .. $#json_entries) {
    save_entry($json_entries[$i], $json_file);
    print $json_file ",\n" if $i < $#json_entries;
}
print $json_file "]\n";
close $json_file;

print "Las direcciones web visitadas se han guardado en visited_urls.json\n";
