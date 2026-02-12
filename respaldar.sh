#!/bin/bash
echo "Iniciando respaldo..."
mkdir -p copia_seguridad
cp -r mi-primer-proyecto/ copia_seguridad/
echo "¡Respaldo completado con éxito!"
date