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

# Script de instalación automatizada de herramientas de Bug Bounty compatibles con terminal TTY basado en el repositorio Awesome Bug Bounty Tools.
# Versión: 3.0
# Autor: TheOffSecGirl
# Descripción: Instala herramientas esenciales para bug bounty en un entorno sin interfaz gráfica (solo TTY).

# Directorios de trabajo
BUG_BOUNTY_TOOLS_DIR=~/bugbounty-tools
ENUMERATION_DIR="$BUG_BOUNTY_TOOLS_DIR/enumeration"
SCANNING_DIR="$BUG_BOUNTY_TOOLS_DIR/scanning"
FUZZING_DIR="$BUG_BOUNTY_TOOLS_DIR/fuzzing"
MISC_DIR="$BUG_BOUNTY_TOOLS_DIR/misc"
WORDLIST_DIR="$BUG_BOUNTY_TOOLS_DIR/wordlists"

# Crear función para crear directorios solo si se usan
create_directory_if_needed() {
    local dir=$1
    if [ ! -d "$dir" ]; then
        mkdir -p "$dir"
    fi
}

# Actualizar el sistema e instalar herramientas esenciales
echo -e "${AMARILLO}Actualizando el sistema e instalando herramientas esenciales...${RESET}"
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl build-essential python3-pip golang cargo

# Añadir Go al PATH si no está
export PATH=$PATH:/usr/local/go/bin

# Función para instalar herramientas con git
install_from_git() {
    local repo_url=$1
    local target_dir=$2
    git clone "$repo_url" "$target_dir"
}

# Subdomain Enumeration (Solo herramientas compatibles con TTY)
echo -e "${AMARILLO}Instalando herramientas de Subdomain Enumeration...${RESET}"

create_directory_if_needed "$ENUMERATION_DIR"
install_from_git "https://github.com/projectdiscovery/subfinder.git" "$ENUMERATION_DIR/subfinder"
install_from_git "https://github.com/OWASP/Amass.git" "$ENUMERATION_DIR/amass"
install_from_git "https://github.com/aboul3la/Sublist3r.git" "$ENUMERATION_DIR/sublist3r"
install_from_git "https://github.com/findomain/findomain.git" "$ENUMERATION_DIR/findomain"
install_from_git "https://github.com/tomnomnom/assetfinder.git" "$ENUMERATION_DIR/assetfinder"

# Compilar Subfinder, Amass, Findomain
cd "$ENUMERATION_DIR/subfinder/v2/cmd/subfinder" && go build && sudo cp subfinder /usr/local/bin/
cd "$ENUMERATION_DIR/amass" && go build ./... && sudo cp amass /usr/local/bin/
cd "$ENUMERATION_DIR/findomain" && cargo build --release && sudo cp target/release/findomain /usr/local/bin/

# Port Scanning (Solo herramientas TTY)
echo -e "${AMARILLO}Instalando herramientas de Port Scanning...${RESET}"

create_directory_if_needed "$SCANNING_DIR"
sudo apt install -y masscan nmap
install_from_git "https://github.com/RustScan/RustScan.git" "$SCANNING_DIR/rustscan"
install_from_git "https://github.com/projectdiscovery/naabu.git" "$SCANNING_DIR/naabu"

# Compilar RustScan y Naabu
cd "$SCANNING_DIR/rustscan" && cargo build --release && sudo cp target/release/rustscan /usr/local/bin/
cd "$SCANNING_DIR/naabu" && go build && sudo cp naabu /usr/local/bin/

# Content Discovery (Solo herramientas TTY)
echo -e "${AMARILLO}Instalando herramientas de Content Discovery...${RESET}"

create_directory_if_needed "$FUZZING_DIR"
sudo apt install -y gobuster
install_from_git "https://github.com/epi052/feroxbuster.git" "$FUZZING_DIR/feroxbuster"
install_from_git "https://github.com/maurosoria/dirsearch.git" "$FUZZING_DIR/dirsearch"
install_from_git "https://github.com/tomnomnom/hakrawler.git" "$FUZZING_DIR/hakrawler"

# Compilar Feroxbuster
cd "$FUZZING_DIR/feroxbuster" && cargo build --release && sudo cp target/release/feroxbuster /usr/local/bin/

# Links (Solo herramientas TTY)
echo -e "${AMARILLO}Instalando herramientas de Links...${RESET}"

create_directory_if_needed "$MISC_DIR"
install_from_git "https://github.com/GerbenJansen/linkfinder.git" "$MISC_DIR/linkfinder"
install_from_git "https://github.com/tomnomnom/waybackurls.git" "$MISC_DIR/waybackurls"
install_from_git "https://github.com/tomnomnom/qsreplace.git" "$MISC_DIR/qsreplace"

# Compilar Linkfinder, Waybackurls y Qsreplace
cd "$MISC_DIR/linkfinder" && python3 setup.py install
cd "$MISC_DIR/waybackurls" && go build && sudo cp waybackurls /usr/local/bin/
cd "$MISC_DIR/qsreplace" && go build && sudo cp qsreplace /usr/local/bin/

# Fuzzing (Solo herramientas TTY)
echo -e "${AMARILLO}Instalando herramientas de Fuzzing...${RESET}"

sudo apt install -y ffuf wfuzz
install_from_git "https://github.com/fuzzdb-project/fuzzdb.git" "$FUZZING_DIR/fuzzdb"

# Exploitation (Solo herramientas TTY)
echo -e "${AMARILLO}Instalando herramientas de Exploitation...${RESET}"

create_directory_if_needed "$EXPLOITS_DIR"
install_from_git "https://github.com/commixproject/commix.git" "$EXPLOITS_DIR/commix"
sudo ln -s "$EXPLOITS_DIR/commix/commix.py" /usr/local/bin/commix
install_from_git "https://github.com/s0md3v/Corsy.git" "$EXPLOITS_DIR/corsy"

# Miscellaneous (Solo herramientas TTY)
echo -e "${AMARILLO}Instalando herramientas adicionales...${RESET}"

create_directory_if_needed "$WORDLIST_DIR"
install_from_git "https://github.com/danielmiessler/SecLists.git" "$WORDLIST_DIR/seclists"
install_from_git "https://github.com/tomnomnom/anew.git" "$MISC_DIR/anew"
install_from_git "https://github.com/tomnomnom/httprobe.git" "$MISC_DIR/httprobe"
install_from_git "https://github.com/tomnomnom/unfurl.git" "$MISC_DIR/unfurl"
install_from_git "https://github.com/projectdiscovery/nuclei.git" "$SCANNING_DIR/nuclei"

# Compilar herramientas Miscellaneous
cd "$MISC_DIR/unfurl" && go build && sudo cp unfurl /usr/local/bin/
cd "$MISC_DIR/httprobe" && go build && sudo cp httprobe /usr/local/bin/
cd "$SCANNING_DIR/nuclei/v2/cmd/nuclei" && go build && sudo cp nuclei /usr/local/bin/

echo -e "${VERDE}Instalación completada. Todas las herramientas compatibles con TTY han sido instaladas correctamente.${RESET}"
