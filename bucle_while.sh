#!/bin/bash

echo "Ingresa un número para la cuenta regresiva:"
read contador

while [ $contador -gt 0 ]; do
    echo $contador
    sleep 1
    contador=$((contador - 1))
done

echo "¡Terminado!"
