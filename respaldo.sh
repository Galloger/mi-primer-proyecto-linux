#!/bin/bash

# 1. Nombre con fecha
FECHA=$(date +%Y-%m-%d_%H-%M)
DESTINO="$HOME/mis_backups"

# 2. Crear la carpeta donde se guardará el backup
mkdir -p $DESTINO

# 3. Comprimir TODO lo que hay en ESTA carpeta (el punto .)
tar -czf $DESTINO/backup_$FECHA.tar.gz .

echo "Respaldo listo en ~/mis_backups"
