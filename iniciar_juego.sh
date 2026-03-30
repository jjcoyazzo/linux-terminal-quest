#!/bin/bash

clear
echo "======================================="
echo "   LINUX TERMINAL QUEST - NIVEL 1"
echo "======================================="
echo ""
echo "Misión: Encuentra el archivo secreto"
echo "Pista: Usa el comando correcto para listar archivos"
echo ""

mkdir -p nivel1
cd nivel1
touch archivo.txt secreto.txt

while true; do
    echo ""
    read -p "Escribe el comando: " comando
    
    if [ "$comando" == "ls" ]; then
        echo "Bien hecho. Encontraste los archivos:"
        ls
        echo "Ahora escribe el nombre del archivo secreto:"
        
        read respuesta
        
        if [ "$respuesta" == "secreto.txt" ]; then
            echo "Correcto. Pasas al siguiente nivel (próximamente...)"
            break
        else
            echo "Ese no es el archivo correcto"
        fi
    else
        echo "Comando incorrecto. Intenta de nuevo."
    fi
done
