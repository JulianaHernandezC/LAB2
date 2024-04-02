\#!/bin/bash

ORIGEN="/Users/julianahernandez/Desktop/Universidad/Primer Semstre 2024/Sistemas Operativos/LAB2/Carpeta1"

DESTINO="/Users/julianahernandez/Desktop/Universidad/Primer Semstre 2024/Sistemas Operativos/LAB2/Carpeta2"

#Confirmacion
echo "Este script copiará todos los archivos de $ORIGEN a $DESTINO." #Muestra en consola el

read -p"¿Desea continuar? (s/n): " CONFIRMAR

#Copia
if [ "$CONFIRMAR" == "s" ]; then
	cp -r "$ORIGEN" "$DESTINO" # "cp -r" copia todos los archivos del directorio de origen al de destino.
	echo "Respaldo Completado"

else
	echo "Respaldo Cancelado"
fi		
