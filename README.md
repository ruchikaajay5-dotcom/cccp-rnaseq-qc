# RNA-seq Quality Assessment of CCCP-Treated HeLa Cells

## Background
CCCP is a mitochondrial uncoupler that disrupts oxidative phosphorylation and mitochondrial membrane potential. This project performs quality assessment of RNA-seq data generated from CCCP-treated and DMSO-treated HeLa cells.

## Objective
To evaluate sequencing quality and identify potential technical artifacts prior to downstream RNA-seq analysis.

## Dataset
- GEO accession: GSE303802
- Organism: Homo sapiens
- Cell line: HeLa
- Platform: Illumina NovaSeq 6000
- Layout: Paired-end RNA-seq

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
- Read trimming
- Alignment
- Differential expression analysis using DESeq2
