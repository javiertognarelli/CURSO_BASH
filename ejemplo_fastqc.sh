for sample *.fastq.gz
do
 # primero creamos directorio de salida
 mkdir qc_muestras

 #luego ejecutamos fastqc
 fastqc $sample -o qc_muestras

done

#despues podríamos agregar multiqc al final para un reporte final
