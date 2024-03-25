## Import .csv, convert to correct PGYI specs, drop unwanted fields added by Tesera, and apply "data smoothing" rules
# Read .csv, convert "." to NA
treatment <- fread(paste0(input.dir,"/treatment.csv"), na.string=".")
fwrite(treatment,"H:/Shared drives/Model Comparison/Compilation_Code_R/PGYI Compiled/i_treatment.csv",row.names=F)

# check outputs
data2 <-  fread("H:/Shared drives/Growth & Yield Lab/Data Sets/PGYI/2023-09-08 PGYI Export/treatment.csv")
diff <- anti_join(regeneration, data2)