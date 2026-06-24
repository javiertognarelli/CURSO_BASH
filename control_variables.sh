#!/bin/bash

NOMBRE="$1"

if [ -z $NOMBRE ];then # con -z es para verificar cadena de texto VACIA
  echo "No me diste un nombre de archivo"
  exit 1

elif [ -f $NOMBRE ];then # con -f es para verificar archivos
  echo "El nombre del archivo es $NOMBRE"

  echo "Contiene estos elementos"
  cat $NOMBRE

  echo "Y el numero de elementos es:"
  wc -l $NOMBRE

elif [ -d $NOMBRE ];then # con -d es para verificar directorios
  echo "Esto es un directorio"

fi
