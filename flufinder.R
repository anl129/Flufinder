# Function 1
upload_fasta <- function(fasta_filename) {
  
  library(seqinr)
  
  #Reading the fasta file
  read.fasta(fasta_filename, seqtype = "AA", as.string = TRUE,
             set.attributes = FALSE)

}

# Function 2
trypsinize <- function(proteins) {
  
  #Opening stringr for simple string manipulation
  library(stringr)
  
  #Using str_split_1 to split proteins after R or K amino acids; "(?<=R|K)" is a regular expression for splitting after "?<=" R or K "R|K"
  lapply(proteins, str_split_1, pattern="(?<=R|K)")
}

# Function 3
split_peptides <- function(peptides) {
  
  # Opening stringr for simple string manipulation
  library(stringr)
  
  #Splitting peptides into individual amino acids using str_split; generates a list of lists of amino acids for each peptide
  lapply(peptides, str_split, pattern="")
  
}
