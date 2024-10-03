#!/bin/bash

# Definición de colores
VERDE="\033[92m"
ROJO="\033[91m"
AMARILLO="\033[93m"
RESET="\033[0m"

# Banner ASCII
banner() {
    echo -e "${VERDE}"
    cat << "EOF"
     _____   _             ___     __    __   ___               ___   _         _ 
    |_   _| | |_    ___   / _ \   / _|  / _| / __|  ___   __   / __| (_)  _ _  | |
      | |   | ' \  / -_) | (_) | |  _| |  _| \__ \ / -_) / _| | (_ | | | | '_| | |
      |_|   |_||_| \___|  \___/  |_|   |_|   |___/ \___| \__|  \___| |_| |_|   |_|
EOF
    echo -e "${RESET}"
}

# Mostrar banner
banner

# Cheatsheet de herramientas de Bug Bounty
declare -A cheatsheet

# Agregar comandos a la cheatsheet
cheatsheet=(
    ["subfinder"]="subfinder -d <dominio> -o subdomains.txt # Guarda los subdominios encontrados en un archivo"
    ["amass"]="amass enum -d <dominio> -o amass_subdomains.txt # Guarda subdominios en un archivo"
    ["sublist3r"]="python3 sublist3r/sublist3r.py -d <dominio> -o sublist3r_subdomains.txt # Guarda resultados en un archivo"
    ["findomain"]="./findomain/findomain -t <dominio> -u findomain_subdomains.txt # Guarda subdominios en un archivo"
    ["assetfinder"]="assetfinder --subs-only <dominio> > assetfinder_subdomains.txt # Guarda subdominios en un archivo"
    ["nmap"]="nmap -p 1-65535 -T4 -A -v <IP_o_Dominio> # Escanea todos los puertos, detecta servicios y versiones"
    ["masscan"]="masscan <IP_o_Dominio> -p1-65535 --rate=1000 # Escaneo rápido de puertos"
    ["rustscan"]="rustscan -a <IP_o_Dominio> --ultra-fast -p- # Escanea todos los puertos rápidamente"
    ["naabu"]="naabu -host <IP_o_Dominio> -p - # Escaneo de puertos abiertos"
    ["gobuster"]="gobuster dir -u http://<IP_o_Dominio> -w /ruta/a/wordlist.txt -t 50 # Busca directorios y archivos"
    ["feroxbuster"]="feroxbuster -u http://<IP_o_Dominio> -w /ruta/a/wordlist.txt # Busca directorios y archivos"
    ["dirsearch"]="python3 dirsearch/dirsearch.py -u http://<IP_o_Dominio> -w /ruta/a/wordlist.txt # Busca directorios y archivos"
    ["hakrawler"]="hakrawler -url http://<IP_o_Dominio> -d 2 # Encuentra enlaces hasta 2 niveles de profundidad"
    ["linkfinder"]="python3 linkfinder/linkfinder.py -i http://<IP_o_Dominio> -o cli > links.txt # Extrae enlaces"
    ["waybackurls"]="cat urls.txt | waybackurls > wayback_links.txt # Extrae enlaces de Wayback Machine"
    ["qsreplace"]="qsreplace 'http://<IP_o_Dominio>' 'http://nuevo.dominio' # Reemplaza dominios en URLs"
    ["ffuf"]="ffuf -u http://<IP_o_Dominio>/FUZZ -w /ruta/a/wordlist.txt # Busca rutas"
    ["wfuzz"]="wfuzz -c -z file,/ruta/a/wordlist.txt --hc 404 http://<IP_o_Dominio>/FUZZ # Busca rutas ignorando 404"
    ["commix"]="python3 /usr/local/bin/commix.py --url 'http://<IP_o_Dominio>?id=1' --data 'name=test' # Inyección de comandos"
    ["corsy"]="python3 corsy/corsy.py -u http://<IP_o_Dominio> # Verifica problemas de CORS"
    ["nuclei"]="nuclei -l <lista_de_IPs_o_dominios.txt> -t /ruta/a/templates/ # Escanea usando plantillas de vulnerabilidades"
    ["anew"]="anew <archivo_anterior> <archivo_nuevo> # Muestra diferencias entre escaneos"
    ["httprobe"]="cat dominios.txt | httprobe # Verifica si los dominios están activos"
    ["unfurl"]="cat links.txt | unfurl -u keys # Extrae parámetros de las URLs"
)

# Función para buscar en la cheatsheet
buscar_comando() {
    local busqueda="$1"
    for comando in "${!cheatsheet[@]}"; do
        if [[ $comando == *"$busqueda"* ]]; then
            echo -e "${AMARILLO}$comando:${RESET} ${cheatsheet[$comando]}"
        fi
    done
}

# Solicitar al usuario la búsqueda
echo -e "${AMARILLO}Ingrese el nombre de la herramienta o parte de ella para buscar:${RESET}"
read -r busqueda

# Ejecutar la búsqueda
buscar_comando "$busqueda"
