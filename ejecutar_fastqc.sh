#!/bin/bash

#Uso script: bash ejecutar_fastqc INPUT OUTDIR
INPUT_DIR="$1"
OUTDIR="$2"

for archivo in $INPUT_DIR/*.fastq.gz
do
    echo "Analizando FASTQC muestra $archivo"
    fastqc $archivo -o $OUTDIR
done

multiqc $OUTDIR -o $OUTDIR
