#!/bin/bash
# sudo apt-get install python3-pip
# dos2unix inicio.sh
# sudo apt-get install xdg-utils

# Instala las dependencias de Python en segundo plano
pip install -r "${PWD}/requi.txt" &

# Espera a que la instalación termine (ajusta el tiempo según sea necesario)
wait

# Ejecuta el primer script Python en segundo plano
python3 "${PWD}/appcuentadante.py" &

# Ejecuta el segundo script Python en segundo plano
python3 "${PWD}/api/api.py" &

# Inicia un servidor HTTP en el puerto 9000 en segundo plano
python3 -m http.server 9000 &

# Espera a que el servidor esté disponible antes de abrir la URL
sleep 2

# Abre la URL en el navegador predeterminado
xdg-open http://127.0.0.1:9000

# Espera a que el servidor esté disponible
wait


