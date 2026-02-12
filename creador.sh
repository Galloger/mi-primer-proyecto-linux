#!/bin/bash
for i in {1..10}
do
    # Creamos la carpeta
    mkdir -p "proyecto_$i"
    # Escribimos el mensaje dentro del archivo
    echo "Propiedad de Galloger" > "proyecto_$i/secreto.txt"
    # Cambiamos los permisos (Solo lectura para el dueño)
    chmod 400 "proyecto_$i/secreto.txt"
    echo "Carpeta proyecto_$i creada con éxito."
done
