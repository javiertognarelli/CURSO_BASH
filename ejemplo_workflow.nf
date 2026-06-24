// ESTE ES UN EJEMPLO BURDO DE WORKFLOW EN NEXTFLOW
// esta doble barra es un comentario y no se ejecuta

// ejemplo basico proceso
process TRIMMING {
 input:
 path(lecturas)

 output:
 path(lecturas.limpia.fastq)

 script:
 """
 # este es un comentario igual que en script bash pero en nextflow
 # este bloque es similar a correr comandos en la terminal
 # se usan los input del bloque de arriba como variables ej. $lecturas
 fastp -i $lecturas -o lecturas.limpia.fastq
 # el resultado del comando va como salida en el bloque output de arriba
 """
}

// el worflow es el que coordina todo los procesos a correr
workflow RECORTE_LECTURAS {

 TRIMMING(params.input) //llamada del workflow en la terminal usa diferentes parametros ej --input

 PROCESO2(TRIMMING.out)
 PROCESO3(PROCESO2.out)
}

// Como ejemplo este worflow se ejecturaria de la siguiente forma si se llamara trimming.nf
// nextflow run trimming.nf --input muestra1.fastq.gz
