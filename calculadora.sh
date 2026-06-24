#!/bin/bash

#VALOR=$(($1 + $2))

echo "ingresar valor1"
read VALOR1
echo "ingresar valor2"
read VALOR2

VALOR_TOTAL=$(($VALOR1 + $VALOR2))

echo "La suma $VALOR1 y $VALOR2 es $VALOR_TOTAL"
