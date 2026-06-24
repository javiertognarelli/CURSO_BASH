#!/bin/bash

NOMBRE="$1"

echo "El nombre del archivo es $NOMBRE"

echo "Contiene estos elementos"
cat $NOMBRE

echo "Y el numero de elementos es:"
wc -l $NOMBRE

