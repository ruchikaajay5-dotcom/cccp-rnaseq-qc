#!/bin/bash

mkdir -p results/fastqc/6h_cccp
mkdir -p results/fastqc/6h_DMSO
mkdir -p results/fastqc/12h_cccp
mkdir -p results/fastqc/12h_dmso
mkdir -p results/multiqc

fastqc data/6h_cccp/*.fastq.gz -o results/fastqc/6h_cccp

fastqc data/6h_DMSO/*.fastq.gz -o results/fastqc/6h_DMSO

fastqc data/12h_cccp/*.fastq.gz -o results/fastqc/12h_cccp

fastqc data/12h_DMSO/*.fastq.gz -o results/fastqc/12h_dmso

multiqc results/fastqc -o results/multiqc
