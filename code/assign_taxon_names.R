all_taxa_sequences <- read_csv("all_taxa_sequences.csv", 
                               col_names = TRUE,
                               show_col_types = FALSE)

assign_taxon_names <- function(file) {
  # read in a haplo_table file
  file_data <- read_csv(file,
                   col_names = TRUE, 
                   show_col_types = FALSE)
  
  # join the haplo_table with the taxon information. Use the sequence columns to merge to avoid ambiguous OTU numbers.
  # select important columns.
  complete_data <- join_left(file_data, all_taxa_sequences, by = join_by(sequences = seq)) %>% 
    select(Phylum, Class, Order, Family, Genus, Species, haplotype)
  
  return(complete_data)
}