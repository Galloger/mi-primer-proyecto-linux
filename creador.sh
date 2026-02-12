#!/bin/bash
rm -rf proyecto_*

# Aquí el script te hace una pregunta
echo "¿Cuántas carpetas quieres crear hoy, Galloger?"
read cantidad  # Aquí el script se detiene y espera a que escribas un número

for i in $(seq 1 $cantidad)
do
    mkdir -p "proyecto_$i"
    echo "Propiedad de Galloger" > "proyecto_$i/secreto.txt"
    chmod 400 "proyecto_$i/secreto.txt"
    echo "Carpeta proyecto_$i creada con éxito."
done

echo "¡Listo! He creado $cantidad carpetas para ti."
