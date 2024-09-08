library(BioNERO)

dataset <- read.csv("GLDS-289_rna_seq_DEG_Normalized_Filtered_Counts.csv")
# Set the first column as the row names
rownames(dataset) <- dataset[,1]

# Remove the first column as it's now being used as row names
dataset <- dataset[,-1]

dataset <- dataset[ , -c(7:9, 16:18)]

sft <- SFT_fit(dataset, net_type = "signed hybrid", cor_method = "pearson")

net <- exp2gcn(
  dataset, net_type = "signed hybrid", SFTpower = 11, 
  cor_method = "pearson")

hubs <- get_hubs_gcn(dataset, net)
print(hubs)

# Extract the first column (Genes) from the 'hubs' data frame and convert to character
genes_list <- hubs$Gene

# Export the extracted column to a plain text file, each item on a new line
writeLines(genes_list, "289_Hub_Genes.txt")
