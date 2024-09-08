# Identification-of-Key-Differentially-Expressed-Thymus-Spaceflight-Genes-Using-Weighted-Gene-Co-expression-Network-Analysis-Associated-Diseases-and-Potential-Drugs
Methodology:
1. Run the Python Notebooks in Google Collab ensuring that the methods notebook and metadata files are in the current working directory to produce the Filtered Thymus RNA-seq Normalized DEG Data
2. In the R console run the two following lines of code:
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("BioNERO")
3. Run the GCN files ensuring that the respective Filtered Thymus RNA-seq Normalized DEG Data is in the current working directory to produce the Hub Gene text file lists
4. Input the text files in the following website to produce hub genes that are found in at least one other hub gene list: https://bioinformatics.psb.ugent.be/webtools/Venn/
5. Save the resulting Venn Diagram as an SVG and copy any common hub genes by saving them into a text file
6. Input the common hub genes into the following website, change the symbol type to Ensembl ID, and press submit: https://toppgene.cchmc.org/enrichment.jsp
7. Click on the Download All button in the Training Results section to download the final resulting disease and drug associations
