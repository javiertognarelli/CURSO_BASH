#!/bin/bash

echo "Creando archivos..."

for i in {1..5}; do
    touch "archivo_$i.txt"
    echo "Se ha creado archivo_$i.txt"
done

echo "¡Proceso terminado!"
