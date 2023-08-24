# Grand-Canyon-Commmunity-Analysis

<p>This would more accurately be call the analysis of the methods for a study on macroinvertebrate communities along the mainstem Colorado river and its tributaries. </p>

<p>The main question addressed in this project is whether different filtering thresholds (filter at expected error of 0.05 and 0.1) or the strictness of the alpha value denoising parameter (cluster_unoise, unoise3 algorithm) changes the number of observed taxanomic units (OTU's) or exact sequence variants (ESV's). Exact sequence variants are individual haplotypes that Jared is using for dispersion and population analysis along the Colorado River. </p>

<p>To check the quality of these sequences (how many may be sequencing errors) we will compare the mean entropy ratio of codon position 2 and codon position 3 for each method. Position 2 of the codons should be the most conserved between ESV's whereas codon position 3 will naturally be highly variable. With strict denoising parameters (low alpha value, ee = 0.05) the ratio between position 2 and 3 should be small because sequences that vary at position 2 of each codon will be considered errors by the algorithm and merged with a "mother" sequence more often. This lowers entropy at position 2, while position 3 will remain variable.</p>

The code folder contains one helper function (the JAMP_folder_rename) and the main analysis scripts. The 4 to look at are:
  1. 1_JAMP_pipeline_denoising.Rmd: the initial process from raw fastq files up to denoising.
  2. 2_denoising_method_analysis.Rmd: Some basic analysis of the number of ESV's and OTU's from various denoising methods.
  3. 3_entropy_ratios.Rmd: 3 different methods of calculating entropy ratios.
  4. 4_BOLDigger_analysis.Rmd: assign taxon specific information to OTU's using the BOLD database. Compare methods
