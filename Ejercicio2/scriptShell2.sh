#!/bin/bash

DIRECTORIO="/Users/julianahernandez/Desktop/Universidad/Primer Semstre 2024/Sistemas Operativos/LAB2/Ejercicio2/ArchivosParaRenombrar"
# echo "ingrese patron: "

read -p "ingrese patron: " PATRON 
read -p "ingrese nombre del archivo: " NOMBRE 

# if[ -d $PATRON ]
#     echo "no se puede renombrar" 

# fi

# if [ ! -d "$DIRECTORIO" ]; then
#     echo "El directorio '$DIRECTORIO' no existe."
#     exit 1
# fi

# Confirmar con el usuario antes de realizar los cambios
echo "Este script renombrará todos los archivos que coincidan con el patrón '$PATRON' a '$NOMBRE' en el directorio '$DIRECTORIO'."
read -p "¿Desea continuar? (s/n): " CONFIRMAR

if [ "$CONFIRMAR" != "s" ]; then
    echo "Operación cancelada."
    exit 0
else
    # Renombrar archivos que coincidan con el patrón dado
    for archivo in "$DIRECTORIO"/*"$PATRON"*; do   #Se recorren todos los archivos del directorio que contengan el patron dado.
        if [ -f "$archivo" ]; then #Se verifica si es un archivo regular.
            nuevo_nombre=$(echo "$archivo" | sed "s/$PATRON/$NOMBRE/") # Se crea un nuevo nombre de archivo, reemplazando el patron por el nombre guardado en la variable "NOMBRE".
            mv "$archivo" "$nuevo_nombre" #se renombra el archivo con el nombre guardado en la variable "nuevo_nombre"
            echo "Archivo '$archivo' renombrado a '$nuevo_nombre'"
        fi
    done
fi


