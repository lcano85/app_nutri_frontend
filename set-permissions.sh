#!/bin/sh
set -eu

# Ejecutar desde la raiz publica del frontend en cPanel.
find . \( -path './.git' -o -path './.well-known' -o -path './cgi-bin' \) -prune -o -type d -exec chmod 0755 {} \;
find . \( -path './.git' -o -path './.well-known' -o -path './cgi-bin' \) -prune -o -type f -exec chmod 0644 {} \;
chmod 0755 ./set-permissions.sh

echo "Permisos aplicados: carpetas 0755 y archivos 0644."
