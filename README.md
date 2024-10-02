
Uso
`nano install_bugbounty_tools.sh`
`chmod +x install_bugbounty_tools.sh`
`./install_bugbounty_tools.sh`

Explicación del Script:

	1.	Organización por carpetas:
	•	Las herramientas se colocan en diferentes carpetas bajo ~/bugbounty-tools:
	•	reconocimiento: Herramientas como subfinder, assetfinder, waybackurls.
	•	exploracion: Herramientas como dirsearch, httpx, sqlmap.
	•	exploits: Herramientas como ffuf, wafw00f.
	•	scanning: Herramientas de escaneo como nmap, masscan, amass, nuclei.
	•	web: Herramientas enfocadas en análisis de aplicaciones web como aquatone.
	•	wordlists: Listas de palabras útiles para ataques (SecLists).
	2.	Instalación de dependencias:
	•	El script actualiza el sistema, instala las dependencias esenciales como git, curl, docker, Go, Node.js, y Python.
	3.	Instalación de herramientas específicas:
	•	Herramientas que requieren Go se instalan con go install, mientras que otras se clonan desde GitHub.
	•	Se instalan utilidades populares como nmap, masscan, amass, y nuclei.
	4.	Creación de enlaces simbólicos:
	•	Algunas herramientas como dirsearch y sqlmap se vinculan a /usr/local/bin para un acceso fácil desde cualquier parte del sistema.

 
