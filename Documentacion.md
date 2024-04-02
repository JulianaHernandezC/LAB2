**Ejercicio 1: Creación de un Script para Respaldo de Archivos**

En este ejercicio defino las variables "ORIGEN" con la direccion de mi directorio de origen y la variable "DESTINO" con la direccion de mi directorio de destino, en el cual se guardara la copia.

Luego con en comando "echo" se muestra un mensaje de confirmacion en la consola.

Despues, el comando "read -p" espera la respuesta del usuario y la guarda en una variable llamada "CONFIRMAR". Si esta respuesta es igual a "s", con el comando "cp -r" se realizara la copia de todos los archivos del directorio de origen al de destino y se imprimira el mensaje "Respaldo Completado", de lo contrario, se imprimira : "Respaldo Cancelado".

**Ejercicio 2: Renombrado Masivo de Archivos**

Primero defino la variable "DIRECTORIO" con la direccion del directorio en donde se realizaran los cambios.
Luego con el comando "read -p" se le pide al usuario que ingrese un patron para buscar en los nombres de los archivos y guarda dicho patron en la variable "PATRON". Con ese mismo comando tambien se le pide al usuario que ingrese un nuevo nombre para aplicar a los archivos que coincidan con ese patrón y lo guarda en la variable "NOMBRE".
<!-- Con el comando "-d" verifica si existe el directorio. Si no existe, muestra un mensaje de error y sale del script. -->

Con el comando "echo" se muestra un mensaje de confirmacion en la consola antes de realizar los cambios. Despues, con el comando "read -p" espera la respuesta del usuario y la guarda en una variable llamada "CONFIRMAR". Si la respuesta es igual a "s", se renombrarán los archivos que coincidan con el patrón dado en el directorio especificado. Primero se recorren todos los archivos del directorio que contengan el patron dado. Con el comando "-f" se verifica que ese archivo sea un archivo regular, si es asi, se crea un nuevo nombre de archivo, reemplazando el patron por el nombre guardado en la variable "NOMBRE" y se guarda en una nueva variable llamada "nuevo_nombre". Luego con el comando "mv" se renombra el archivo con el nombre guardado en la variable "nuevo_nombre". Por ultimo, se muestra un mensaje diciendo el nuevo nombre del archivo.


**Ejercicio 3: Monitoreo de Espacio en Disco**

Primero en la variable "UMBRAL" se guarda un umbral en porcentaje del espacio disponible.
Luego con los comandos "df", "awk" y "sed" se obtiene el porcentaje del espacio disponible en disco  y se guarda en la variable "ESPACIO".
Luego se verifica si el espacio disponible es menor que el umbral, si es asi, se muestra un mensaje indicando que el espacio disponible es inferior al umbral.