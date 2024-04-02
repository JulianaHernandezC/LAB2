#!/bin/bash

# UMBRAL=1000  # Umbral de espacio disponible en MB


# ESPACIO=$(df -P / | awk 'NR==2 {print $4}' | sed 's/[^0-9]*//g') # Obtener el espacio disponible en disco en MB


# if [ $ESPACIO -lt $UMBRAL ]; then # Verificar si el espacio disponible es menor que el umbral
#     echo "El espacio disponible en disco es inferior a $UMBRAL MB. Actualmente hay $ESPACIO MB."
# else
#     echo "El espacio disponible en disco es superior a $UMBRAL MB. Actualmente hay $ESPACIO MB."
#     # cron
# fi

UMBRAL=10  # Umbral de espacio en disco en porcentaje
# Obtener información sobre el espacio en disco
ESPACIO=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

# Verificar si el espacio disponible es menor que el umbral
if [ $ESPACIO -gt $UMBRAL ]; then
    echo "El espacio en disco disponible es del $ESPACIO%, por encima del 
umbral del $UMBRAL%."
else
    echo "El espacio en disco disponible es del $ESPACIO%, por debajo del umbral del $UMBRAL%."

    # Aquí puedes agregar código para enviar una notificación al usuario,  por ejemplo, mediante un correo electrónico o un mensaje.
fi