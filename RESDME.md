# RNA-seq Quality Assessment of CCCP-Treated HeLa Cells

## Background
CCCP is a mitochondrial oxidative phosphorylation uncoupler that induces mitochondrial dysfunction and depolarization. This project explores RNA-seq quality assessment of CCCP-treated and DMSO-treated HeLa cell samples prior to downstream transcriptomic analysis.

## Objective
To evaluate sequencing quality, identify technical artifacts, and assess dataset suitability for downstream RNA-seq analysis.

## Dataset
- GEO accession: GSE303802
- Samples:
  - DMSO 6h replicate 1
  - CCCP 6h replicate 1
- Platform: Illumina NovaSeq 6000
- Layout: Paired-end RNA-seq

## Workflow
1. Download FASTQ files from ENA
2. Perform quality control using FASTQC
3. Aggregate reports using MultiQC
4. Interpret sequencing quality metrics

## Tools Used
- Linux
- FASTQC
- MultiQC
- wget

## Key Findings
- High per-base sequence quality observed
- Minimal adapter contamination detected
- Expected RNA-seq sequence composition bias present
- Elevated duplication levels likely reflect highly expressed transcripts rather than severe technical artifacts

## Future Work
- Read trimming
- Alignment
- Differential expression analysis using DESeq2
