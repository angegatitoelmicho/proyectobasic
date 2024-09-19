#!/bin/bash

# Verifica si hay cambios en el repositorio
if [ -n "$(git status --porcelain)" ]; then
    # Agrega todos los cambios al área de preparación
    git add .

    # Solicita un mensaje de commit al usuario
    echo "Introduce el mensaje del commit:"
    read commit_message

    # Realiza el commit con el mensaje proporcionado
    git commit -m "$commit_message"

    # Empuja los cambios al repositorio remoto
    git push origin master
else
    echo "No hay cambios para commitear."
fi
