import time
from openvpn_api import Client
import ssl
import datetime

# Configura la conexión VPN
vpn_client = Client()
vpn_client.connect('127.0.0.1', 5555)  # Cambia esto por la dirección IP y el puerto de tu servidor OpenVPN

# Función para verificar la caducidad del certificado del servidor VPN
def check_cert_expiry():
    cert = ssl.get_server_certificate(('server_ip', 443))  # Cambia 'server_ip' por la dirección IP del servidor VPN
    x509 = ssl.PEM_cert_to_DER_cert(cert)
    x509 = ssl.DER_cert_to_PEM_cert(x509)
    x509 = ssl.load_cert_string(x509)
    expiry_date = x509.get_notAfter()
    expiry_date = datetime.datetime.strptime(expiry_date.decode('ascii'), '%Y%m%d%H%M%SZ')
    days_left = expiry_date - datetime.datetime.now()
    return days_left.days

# Bucle principal para mantener la conexión VPN activa y verificar la caducidad del certificado
try:
    while True:
        # Verificar la caducidad del certificado cada día
        if datetime.datetime.now().hour == 0:
            days_left = check_cert_expiry()
            if days_left < 30:
                print("¡Atención! El certificado del servidor VPN caducará en menos de 30 días.")
        
        # Verificar si la conexión VPN está activa, y si no, intentar reconectar
        if not vpn_client.connected:
            vpn_client.connect('127.0.0.1', 5555)  # Cambia esto por la dirección IP y el puerto de tu servidor OpenVPN
        
        time.sleep(3600)  # Esperar una hora antes de volver a verificar
        
except KeyboardInterrupt:
    print("Se ha interrumpido el script.")
    vpn_client.disconnect()