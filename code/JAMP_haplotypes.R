# denoise using JAMP and cluster haplotypes into OTUs
# Created 3/9/22


# Load JAMP and set working directory -------------------------------------

rm(list = ls())
graphics.off()

library(JAMP)

setwd("/Users/jaredfreedman/Research/git/edna_metabarcoding/GC_VR_MiSeq_2021/JAMP_haplotypes/")

# minmax and maxEE --------------------------------------------------------

Cutadapt_files <- list.files("../D_Cutadapt/_data", full.names = TRUE)
Minmax(files = Cutadapt_files,
       min=(142),
       max=(142)) # set minmax to only take 142bp fragments (exact matches)
JAMP_folder_rename(newname="minmax_haplotypes")

Minmax_files <- list.files(paste0(recent_newname, "/_data"), full.names = TRUE)
Max_ee(files = Minmax_files,
       max_ee=0.5)
JAMP_folder_rename(newname="maxee_haplotypes_maxee0_5")


# denoise  ----------------------------------------------------------------

filesfor_Denoise <- list.files("maxee_haplotypes_maxee0_5_2022-03-16/_data/", full.names = TRUE)
Denoise(files = filesfor_Denoise,
        minsize = 10,
        minrelsize = 0.001,
        unoise_alpha = 5)
JAMP_folder_rename(newname="denoised_haplotypes_maxee0_5")




