#download SARS COV 2 whole genome sequence from NCBI to fastq format (paired end sample)
FASTQ_FILE=SRR13565667

fastq-dump --split-files $FASTQ_FILE

#sample quality control with fastqc tool
fastqc *.fastq

#preview and check quality control results
firefox *.html

#download reference genome (from NCBI) in .fasta format

#indexing the reference genome
bwa index -p covid_19 sarscov2_refgenome.fasta

#perform bwa-mem alignment to reference genome
bwa mem -M -t 8 covid_19 SRR13565667_1.fastq SRR13565667_2.fastq > SRR13565667.sam

#use samtools to fix some issues in produced file
samtools fixmate -O bam SRR13565667.sam SRR13565667.bam

#sort .bam file
samtools sort -T temp.prefix -O bam -@ 8 -o SRR13565667.sorted.bam SRR13565667.bam


