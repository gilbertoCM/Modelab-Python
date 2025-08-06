#!/bin/bash
# Script simple para limpiar todos los notebooks
# Uso: ./clean_notebooks.sh

echo "Limpiando todos los notebooks en el proyecto..."

find . -name "*.ipynb" -not -path "./.git/*" | while read -r file; do
    echo "Limpiando: $file"
    # Usar jupyter nbconvert si está disponible
    if command -v jupyter >/dev/null 2>&1; then
        jupyter nbconvert --clear-output --inplace "$file"
    fi
done

echo "¡Notebooks limpiados!"
