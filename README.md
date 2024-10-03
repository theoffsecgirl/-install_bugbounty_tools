# Bug Bounty Tools - theoffsecgirl

Este repositorio contiene scripts para la instalación de herramientas esenciales de Bug Bounty y un buscador interactivo para comandos de herramientas de seguridad.

## 1. Script de Instalación de Herramientas de Bug Bounty

Este script automatiza la instalación de herramientas esenciales para Bug Bounty en un entorno TTY (sin interfaz gráfica).

### Uso

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/theoffsecgirl/bugbounty_tools.git  # Clona el repositorio en tu máquina local
   ```

2. Navegar al directorio del repositorio:

   ```bash
   cd bugbounty_tools  # Accede a la carpeta del repositorio
   ```

3. Asignar permisos de ejecución al script de instalación:

   ```bash
   chmod +x install_bugbounty_tools.sh  # Asigna permisos de ejecución al script
   ```

4. Ejecutar el script:

   ```bash
   ./install_bugbounty_tools.sh  # Ejecuta el script para instalar las herramientas
   ```

### Explicación del Script

#### Organización por Carpetas
Las herramientas se organizan en diferentes carpetas bajo ~/bugbounty-tools:
- Reconocimiento: Herramientas para enumeración de subdominios y descubrimiento de activos, como:
  - subfinder
  - assetfinder
  - waybackurls
- Exploración: Herramientas para escaneo y pruebas de vulnerabilidades, como:
  - dirsearch
  - httpx
  - sqlmap
- Exploits: Herramientas para fuzzing y detección de WAF, como:
  - ffuf
  - wafw00f
- Scanning: Herramientas de escaneo como:
  - nmap
  - masscan
  - amass
  - nuclei
- Web: Herramientas enfocadas en análisis de aplicaciones web, como:
  - aquatone
- Wordlists: Listas de palabras útiles para ataques, incluyendo:
  - SecLists

#### Instalación de Dependencias
El script actualiza el sistema e instala dependencias esenciales como:
- git
- curl
- docker
- Go
- Node.js
- Python

#### Instalación de Herramientas Específicas
Las herramientas que requieren Go se instalan con go install, mientras que otras se clonan desde GitHub.
Se instalan utilidades populares como:
- nmap
- masscan
- amass
- nuclei

#### Creación de Enlaces Simbólicos
Algunas herramientas como dirsearch y sqlmap se vinculan a /usr/local/bin para un acceso fácil desde cualquier parte del sistema.

## 2. Tools Search - Buscador de Comandos de Herramientas de Bug Bounty

Este script proporciona un buscador interactivo para herramientas de Bug Bounty. Permite a los usuarios buscar comandos específicos de herramientas de seguridad mediante la entrada de un nombre de herramienta o parte de él.

### Uso

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/theoffsecgirl/bugbounty_tools.git  # Clona el repositorio en tu máquina local
   ```

2. Navegar al directorio del repositorio:

   ```bash
   cd bugbounty_tools  # Accede a la carpeta del repositorio
   ```

3. Asignar permisos de ejecución al script de búsqueda:

   ```bash
   chmod +x tools_search.sh  # Asigna permisos de ejecución al script
   ```

4. Ejecutar el script:

   ```bash
   ./tools_search.sh  # Ejecuta el script para buscar comandos
   ```

5. Ingrese el nombre de la herramienta o parte de ella cuando se le solicite.

### Ejemplo de Salida

Al ejecutar el script y realizar una búsqueda, verás una salida similar a esta:

```
Ingrese el nombre de la herramienta o parte de ella para buscar:
subfinder
Subfinder: subfinder -d <dominio> -o subdomains.txt # Guarda los subdominios encontrados en un archivo
```

### Comandos Disponibles

- **Subdomain Enumeration**
  - Subfinder
  - Amass
  - Sublist3r
  - Findomain
  - Assetfinder

- **Port Scanning**
  - Nmap
  - Masscan
  - RustScan
  - Naabu

- **Content Discovery**
  - Gobuster
  - Feroxbuster
  - Dirsearch
  - Hakrawler

- **Links**
  - Linkfinder
  - Waybackurls
  - Qsreplace

- **Fuzzing**
  - FFUF
  - Wfuzz

- **Exploitation**
  - Commix
  - Corsy

- **Miscellaneous**
  - Nuclei
  - Anew
  - Httprobe
  - Unfurl

## Conclusión

Este repositorio proporciona scripts que permiten una instalación organizada de herramientas de Bug Bounty y un buscador para acceder rápidamente a los comandos de dichas herramientas. Asegúrate de revisar cada herramienta y su documentación para maximizar su uso.

## Contribuciones

Si deseas contribuir a este proyecto, no dudes en enviar un pull request o abrir un issue para discutir nuevas ideas.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.
