## SarsCov2-LINUX

*This is a master's course project (LINUX) about SARS-COV2 genome.*

The project includes some important steps and procedures as:

- downloading a genome sequence (paired-end reads) from NCBI to fastq format via SRA Toolkit

- checking the quality of the downloaded files with fastqc tool

- downloading the reference genome (FASTA format) from NCBI, and indexing over it.
> [NCBI SARS-CoV-2 Data](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512)

- performing bwa-mem alignment of two .fastq files (short reads) to the reference genome of Sars Cov 2.

- using samtools software to fix issues on produced files.

- sorting .bam file.  

> The proper commands can be found on .sh file.
