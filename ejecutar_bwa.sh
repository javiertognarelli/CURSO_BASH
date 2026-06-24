#!/bin/bash

#directorio de entrada, esperado 01_datos_crudos
INDIR="$1"

#dir de salida 05_mapeo
OUTDIR="$2"

for archivo in $INDIR/*R1.fastq.gz
do

    # muestra-X_L001_R1.fastq.gz muestra-X_L001_R2.fastq.gz

    sample_id=$(echo $(basename $archivo .fastq.gz) | \
       sed 's/_L001//' | sed 's/_R[12]//')

    echo "Alineando muestra $sample_id"

    bwa mem -t 4 -R '@RG\tID:${sample_id}\tSM:${sample_id}' \
       04_referencia/referencia.fasta \
       $INDIR/${sample_id}_L001_R1.fastq.gz \
       $INDIR/${sample_id}_L001_R2.fastq.gz | \
       samtools sort > $OUTDIR/${sample_id}.bam \
       2> 09_logs/mapeo.log

    #al terminar
    echo "PROCESO TERMINADO BWA y SORT"

done
