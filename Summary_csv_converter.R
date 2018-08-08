install.packages(c("tidyverse","readr"))

library(tidyr)

library(readr)

total_seqs <- read_csv("//mhsdata.anu.edu.au/mhs/workgroups/jcsmr/ArkellLab/Lab Members/Kyle/Honours/CRISPR R anal/ARE ZIC2 CRISPR sites/2018.03.05.01.02.33.619.V2.CasFinderOutput.input.FinalOutput.txt")
View(total_seqs)

total_seq
summary(total_seqs)

seq_df <- data.frame(total_seqs)


colnames(total_seqs) <-"data"

ZIC2_UTR <- separate(seq_df, data, c("SeqID", "Sequence", "Score", "No.ofHits"), sep = "\t")



ZIC2_UTR <- ZIC2_UTR %>% arrange(No.ofHits, desc(Score))





write.csv(ZIC2_UTR, file = "Summary_of_guides")
