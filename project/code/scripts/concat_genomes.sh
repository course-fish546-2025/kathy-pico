#!/bin/bash

# get list of paired diel reads only
ls /mnt/nfs/projects/armbrust-metat/gradients3/g3_station_ns_metat/qc_data/G3.DIEL*.fastq.gz | grep -v '.unpaired.fastq.gz' > file_list.txt

## build salmon index of all genomes
# combine all genomes into 1 file
cd ~/data/references/genomes/cycog_v6
# Check if combined.fna already exists
if [ -e combined.fna ]; then
  echo "combined.fna already exists"
  exit 1
fi

# Loop through all .tar.gz files
for archive in img_data_cycog6/*.tar.gz; do
  # Extract the .genes.fna file directly to stdout and append to combined.fna
  tar -xzf "$archive" --wildcards --no-anchored '*.genes.fna' -O >> combined.fna
  # Add a newline between files
  echo >> combined.fna
done
