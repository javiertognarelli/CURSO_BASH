#!/bin/bash

echo "Por favor, ingresa tu edad:"
read edad

if [ $edad -lt 0 ]; then
    echo "Error: Edad no válida."
elif [ $edad -ge 18 ]; then
    echo "Eres mayor de edad. Puedes votar y conducir."
else
    echo "Eres menor de edad."
fi
