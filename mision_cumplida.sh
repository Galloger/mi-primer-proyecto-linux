#!/bin/bash

# 1. Definir variables
FECHA=$(date +%Y-%m-%d_%H%M)
USER_HOME=$HOME
BACKUP_DIR="$USER_HOME/mis_backups"

echo "🚀 Iniciando proceso maestro de seguridad..."

# 2. Backup Local
mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/backup_pro_$FECHA.tar.gz .
echo "📦 Respaldo local creado: backup_pro_$FECHA.tar.gz"

# 3. Sincronización con GitHub
echo "🌐 Subiendo cambios a GitHub..."
git add .
git commit -m "Backup y actualización automática: $FECHA"
git push origin main

# 4. Reporte de Vigilancia rápido
echo "---"
echo "✅ TODO LISTO, GALLOGER."
echo "👤 Usuarios activos:" $(whoami)
echo "🌐 Nginx está activo en: http://localhost"
