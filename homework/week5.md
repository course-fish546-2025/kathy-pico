**1. What are SAM/BAM files? What is the difference between to the two?**

SAM/BAM files are outputs from alignment tools. They are two different file formats that contain the aligned sequencing results. SAM (Sequence Alignment Map) files are text files that contain the individual mapped reads and their associated metadata. BAM files (Binary Alignment Map) are the compressed binary version of SAM files. SAM files are typically larger and slower to process due to their larger size.  

**2. `samtools` is a popular program for working with alignment data. What are three common tasks that this software is used for?**

- converting SAM to BAM files for further analysis
- sorting aligned reads by choromosomal coordinates
- indexing a sorted BAM file for efficient upstream analysis

**3. Why might you want to visualize alignment data and what are two program that can be used for this?**

After aligning your data, it would be nice to quickly look over your alignments to see if your results are what you expected. You can use: 
- `samtools tview` or
- Intgegrated Geomics Viewer 

samtools is better for doing a quick visualization through the command line. IGV requires installation but can show more information, such as the positions of aligned reads. 

**4. Describe what VCF file is?**

Variant Call Format (VCF) files contain the results of "stacked" reads from different sequences to identify variants. They provide information on the variants, its position, and all individual's genotypes for the variants. 