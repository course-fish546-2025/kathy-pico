#!/bin/bash

# set up
FASTA=~/data/references/genomes/cycog_v6/combined.fna
INDEX_DIR=~/data/references/genomes/cycog_v6/salmon_index
MAP_DIR="/mnt/nfs/home/klqi/data/mappings/g3_diel/pro_syn_virus"
FILE_LIST=file_list.txt
THREADS=48

## create salmon index of combined genes 
# Build index if it doesn't exist
if [ ! -d "$INDEX_DIR" ]; then
    echo "Building Salmon index..."
    # -k is kmer length, try 31 for now
    salmon index -t "$FASTA" -i "$INDEX_DIR" -k 31 -p $THREADS --keepDuplicates 
else
    echo "Salmon index already exists at $INDEX_DIR"
fi


READSDIR="/mnt/nfs/projects/armbrust-metat/gradients3/g3_station_ns_metat/qc_data/"
FWREADS="G3.DIEL*.fw.fastq.gz"

ALLFW="$(ls $READSDIR$FWREADS)"
for read1 in $ALLFW; do
    # Derive reverse read name
    path=$(dirname "$read1")
    name=$(basename "$read1" .fw.fastq.gz)
    read2="$path""/$name"".rv.fastq.gz"
    # Validate pair existence
    if [ ! -f "$read2" ]; then
        echo "Error: Missing paired file for $read1" >&2
        exit 1
    fi
    # Create sample name from read1 filename
    sample_name=$(basename "${read1%.fw.fastq.gz}")
    OUTPUT_DIR="${MAP_DIR}/quant_${sample_name}"
    
    # check if it doesn't already exist, make mapping!
    if [ ! -d "$INDEX_DIR" ];
done

    
#     # Run quantification
#     echo "Processing sample: $sample_name"
#     salmon quant -i "$INDEX_DIR" -l A \
#         -1 "$read1" -2 "$read2" \
#         -p $THREADS --validateMappings \
#         -o "$OUTPUT_DIR"
# done