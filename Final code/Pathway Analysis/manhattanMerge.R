library(readr)
UC_lmreg <- read_csv("usefulData/100n/UC_lmreg_pval_coef_stderr copy.csv")

UC_mz_rt <- read_csv("usefulData/100n/UC_T_sample_C8p_metabo_120_mz_rt.csv")

UC_merged <- merge(UC_lmreg, UC_mz_rt, by="mz")

#write.csv(UC_merged, "usefulData/100n/UC_Manhattan.csv")

meta <- read_csv("usefulData/100n/metabo_meta.csv")

library(data.table)

#transpose data frame
meta_t <- transpose(data)

write.csv(meta_t, "meta_t.csv")

meta_t[1]

mz_rt <- meta_t[c(3, 4)]

write.csv(mz_rt, "usefulData/mz_rt.csv")























UC <- read.csv("usefulData/100n/UC_Manhattan.csv")

p_t <- UC[c("mz", "rt", "FDR.adjusted.pvalue_Class", "Estimate_Class")]

write.csv(p_t, "usefulData/final_manhattan.csv")


combo <- cbind(mz_rt, p_t)