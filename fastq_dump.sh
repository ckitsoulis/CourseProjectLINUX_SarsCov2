#download SARS-COV-2 whole genome sequence from NCBI to fastq format (paired end)
FASTQ_FILE=SRR13491098

fastq-dump -I --split-files $FASTQ_FILE
