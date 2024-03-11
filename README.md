sudo nmap -T4 -A -p- --script="default,discovery,vuln" --script-args="unsafe=1" ip -oA escaneo_avanzado
