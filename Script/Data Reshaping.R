# Data Reshaping

# Load the required packages
library(tidyverse)

# Read the gene data
gene_data <- read_table("Data/table_degenes_brca.txt")

# Identify over-expressed significant genes
over_expreesed_genes <- gene_data |>
  filter(Log2_FoldChange > 1 & adjp < 0.05) |> 
  arrange(desc(Log2_FoldChange)) |> 
  head(20)

# Identify under-expressed significant genes
under_expreesed_genes <- gene_data |>
  filter(Log2_FoldChange < -1 & adjp < 0.05) |> 
  arrange(desc(Log2_FoldChange)) |> 
  head(20)

# Binding rows 
combined_genes_1 <- bind_rows(over_expreesed_genes, under_expreesed_genes)

# Binding columns 
gene_info <- gene_data |> 
  select(GeneSymbol, GeneID) |> 
  top_n(20)

expression_info <- gene_data |> 
  select(Median_Tumor, Median_Normal) |> 
  top_n(20)

stat_info <- gene_data |> 
  select(Log2_FoldChange, adjp) |> 
  top_n(20)

combined_genes_2 <- bind_cols(gene_info, expression_info, stat_info)

# Read wide data
wide_data <- readxl::read_excel("Data/life_expectancy_wide_data.xls")

# transform wide data into long data
wide_data |> 
  pivot_longer(cols = 2:65, 
               names_to = "Year",
               values_to = "Life_Expectancy")


