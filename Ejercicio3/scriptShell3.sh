#!/bin/bash

#Configuracion del cron para que el script sea ejecutado cada 5 minutos.
*/5 * * * * /Users/julianahernandez/Desktop/Universidad/Primer Semstre 2024/Sistemas Operativos/LAB2.1/Ejercicio3/scriptShell3.sh

UMBRAL=10  # Umbral de espacio en disco en porcentaje

# Para obtener información sobre el espacio en disco
ESPACIO=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

# Para verificar si el espacio disponible es menor que el umbral
if [ $ESPACIO -gt $UMBRAL ]; then
    echo "El espacio en disco disponible es del $ESPACIO%, por encima del 
umbral del $UMBRAL%."
else
    echo "El espacio en disco disponible es del $ESPACIO%, por debajo del umbral del $UMBRAL%."
fi
