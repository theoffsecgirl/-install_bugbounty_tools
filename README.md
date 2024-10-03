# README - Script de Instalación de Herramientas de Bug Bounty

# ----------------------------------------------------
# Este script automatiza la instalación de herramientas esenciales para Bug Bounty en un entorno TTY (sin interfaz gráfica).
# ----------------------------------------------------

# Uso
# ----------------------------------------------------
# 1. Clonar el repositorio:
git clone https://github.com/theoffsecgirl/bugbounty_tools.git  # Clona el repositorio en tu máquina local

# 2. Navegar al directorio del repositorio:
cd bugbounty_tools  # Accede a la carpeta del repositorio

# 3. Asignar permisos de ejecución al script de instalación:
chmod +x install_bugbounty_tools.sh  # Asigna permisos de ejecución al script

# 4. Ejecutar el script:
./install_bugbounty_tools.sh  # Ejecuta el script para instalar las herramientas

# ----------------------------------------------------
# Explicación del Script
# ----------------------------------------------------

# Organización por Carpetas
# Las herramientas se organizan en diferentes carpetas bajo ~/bugbounty-tools:
# - Reconocimiento: Herramientas para enumeración de subdominios y descubrimiento de activos, como:
#   - subfinder
#   - assetfinder
#   - waybackurls
# - Exploración: Herramientas para escaneo y pruebas de vulnerabilidades, como:
#   - dirsearch
#   - httpx
#   - sqlmap
# - Exploits: Herramientas para fuzzing y detección de WAF, como:
#   - ffuf
#   - wafw00f
# - Scanning: Herramientas de escaneo como:
#   - nmap
#   - masscan
#   - amass
#   - nuclei
# - Web: Herramientas enfocadas en análisis de aplicaciones web, como:
#   - aquatone
# - Wordlists: Listas de palabras útiles para ataques, incluyendo:
#   - SecLists

# Instalación de Dependencias
# El script actualiza el sistema e instala dependencias esenciales como:
# - git
# - curl
# - docker
# - Go
# - Node.js
# - Python

# Instalación de Herramientas Específicas
# Las herramientas que requieren Go se instalan con go install, mientras que otras se clonan desde GitHub.
# Se instalan utilidades populares como:
# - nmap
# - masscan
# - amass
# - nuclei

# Creación de Enlaces Simbólicos
# Algunas herramientas como dirsearch y sqlmap se vinculan a /usr/local/bin para un acceso fácil desde cualquier parte del sistema.

# ----------------------------------------------------
# Conclusión
# Este script proporciona una forma eficiente y organizada de configurar un entorno para Bug Bounty.
# Asegúrate de revisar cada herramienta y su documentación para maximizar su uso.
# ----------------------------------------------------
