






import time
from openvpn_api import Client
import ssl
import datetime

# Lista de configuraciones de VPN (dirección IP, puerto, etc.)
vpn_configs = [
    {"ip": "vpn_server1_ip", "port": 5555},
    {"ip": "vpn_server2_ip", "port": 5555},
    # Agrega más configuraciones de VPN según sea necesario
]

# Función para conectar al servidor VPN especificado
def connect_to_vpn(vpn_config):
    vpn_client = Client()
    try:
        vpn_client.connect(vpn_config["ip"], vpn_config["port"])
        return vpn_client
    except Exception as e:
        print(f"No se pudo conectar al servidor VPN {vpn_config['ip']}: {e}")
        return None

# Función para verificar la caducidad del certificado del servidor VPN
def check_cert_expiry(server_ip):
    cert = ssl.get_server_certificate((server_ip, 443))
    x509 = ssl.PEM_cert_to_DER_cert(cert)
    x509 = ssl.DER_cert_to_PEM_cert(x509)
    x509 = ssl.load_cert_string(x509)
    expiry_date = x509.get_notAfter()
    expiry_date = datetime.datetime.strptime(expiry_date.decode('ascii'), '%Y%m%d%H%M%SZ')
    days_left = expiry_date - datetime.datetime.now()
    return days_left.days

# Bucle principal para mantener la conexión VPN activa y verificar la caducidad del certificado
current_vpn = 0
while True:
    vpn_client = connect_to_vpn(vpn_configs[current_vpn])
    
    # Si no se pudo conectar, intenta con el siguiente servidor VPN en la lista
    if vpn_client is None:
        current_vpn = (current_vpn + 1) % len(vpn_configs)
        continue
    
    print(f"Conectado a VPN {current_vpn + 1}")
    
    # Verificar la caducidad del certificado cada día
    days_left = check_cert_expiry(vpn_configs[current_vpn]["ip"])
    if days_left < 30:
        print(f"¡Atención! El certificado del servidor VPN {current_vpn + 1} caducará en menos de 30 días.")
    
    # Esperar un tiempo antes de cambiar a la siguiente VPN
    time.sleep(3600)  # Esperar una hora antes de volver a verificar
    
    # Desconectar la VPN actual
    vpn_client.disconnect()
    
    # Cambiar al siguiente servidor VPN en la lista
    current_vpn = (current_vpn + 1) % len(vpn_configs)
