# RNA-seq Quality Assessment of CCCP-Treated HeLa Cells

## Background
CCCP is a mitochondrial uncoupler that disrupts oxidative phosphorylation and mitochondrial membrane potential. This project performs quality assessment of time point based RNA-seq data generated from CCCP-treated and DMSO-treated HeLa cells for 6 hours.

## Objective
To evaluate sequencing quality and identify potential technical artifacts prior to downstream RNA-seq analysis.

## Dataset
- GEO accession: GSE303802
- Organism: Homo sapiens
- Cell line: HeLa
- Platform: Illumina NovaSeq 6000
- Layout: Paired-end RNA-seq

## Data Download

Raw FASTQ files were downloaded from the SRA database using:

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR347/073/SRR34737873/SRR34737873_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR347/073/SRR34737873/SRR34737873_2.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR347/076/SRR34737876/SRR34737876_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR347/076/SRR34737876/SRR34737876_2.fastq.gz

## Workflow
1. Download FASTQ files
2. Perform FASTQC analysis
3. Aggregate reports using MultiQC
4. Interpret quality metrics

## Tools Used
- Linux
- FASTQC
- MultiQC
- Bash scripting

## Software Versions
- FastQC v0.12.1
- MultiQC v1.18

## Key Findings
- High per-base sequencing quality observed
- Minimal adapter contamination detected
- Elevated sequence duplication likely reflects highly expressed transcripts
- Data suitable for downstream preprocessing

## Future Work
- Assessing the quality of FASTQC and MULTIQC reports of 12h CCCP-treated vs 12h DMSO-treated conditions in HeLa cells.
- Read trimming
- Alignment
- Differential expression analysis using DESeq2
