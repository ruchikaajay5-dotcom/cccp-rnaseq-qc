#!/bin/bash

fastqc data/6h_cccp/*.fastq.gz -o results/fastqc/6h_CCCP

fastqc data/6h_DMSO/*.fastq.gz -o results/fastqc/6h_DMSO

multiqc results/fastqc -o results/multiqc

