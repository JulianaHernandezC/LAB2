#!/bin/bash

UMBRAL=10  # Umbral de espacio en disco en porcentaje

# Obtener información sobre el espacio en disco
ESPACIO=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

# Verificar si el espacio disponible es menor que el umbral
if [ $ESPACIO -gt $UMBRAL ]; then
    echo "El espacio en disco disponible es del $ESPACIO%, por encima del 
umbral del $UMBRAL%."
else
    echo "El espacio en disco disponible es del $ESPACIO%, por debajo del umbral del $UMBRAL%."
fi
