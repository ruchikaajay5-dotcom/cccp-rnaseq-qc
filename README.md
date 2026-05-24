# RNA-seq Quality Assessment of CCCP-Treated HeLa Cells at 6h vs 12h timepoints.

## Background
CCCP is a mitochondrial uncoupler that disrupts oxidative phosphorylation and mitochondrial membrane potential. This project performs quality assessment of time point based RNA-seq data generated from CCCP-treated and DMSO-treated HeLa cells at two time points 6 hours and 12 hours.

## Objective
To evaluate sequencing quality prior to downstream RNA-seq analysis.

## Dataset
- GEO accession: GSE303802
- Organism: Homo sapiens
- Cell line: HeLa
- Platform: Illumina NovaSeq 6000
- Layout: Paired-end RNA-seq

## Data Download

Raw FASTQ files were downloaded from the SRA database using:

# 6h-cccp
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR347/073/SRR34737873/SRR34737873_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR347/073/SRR34737873/SRR34737873_2.fastq.gz

# 6h-DMSO
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR347/076/SRR34737876/SRR34737876_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR347/076/SRR34737876/SRR34737876_2.fastq.gz

# 12h-DMSO
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR347/070/SRR34737870/SRR34737870_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR347/070/SRR34737870/SRR34737870_2.fastq.gz

# 12h-cccp
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR347/067/SRR34737867/SRR34737867_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR347/067/SRR34737867/SRR34737867_2.fastq.gz

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
- Most of the reads showed good quality scores (mostly above Q30), so overall the sequencing data looks reliable.
- I did not see any major adapter contamination in the FastQC reports, which suggests the libraries were prepared and cleaned properly.
- There is some duplication in the reads, which could be due to PCR amplification during library prep.
- GC content and overall sequence composition look normal for human RNA-seq data.
- Overall, the data seems good enough to move forward with trimming and alignment. 

## Future Work
- Read trimming
- Alignment
- Differential expression analysis using DESeq2
