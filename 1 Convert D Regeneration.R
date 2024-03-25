## Import .csv, convert to correct PGYI specs, drop unwanted fields added by Tesera, and apply "data smoothing" rules
# Read .csv, convert "." to NA
regeneration <- fread(paste0(input.dir,"/regeneration.csv"), na.string=".")
# Delete entries without regeneration counts
regeneration <- regeneration[!is.na(regeneration$regeneration_count),]

fwrite(regeneration,"H:/Shared drives/Model Comparison/Compilation_Code_R/PGYI Compiled/i_regeneration.csv",row.names=F)

# check outputs
data2 <-  fread("H:/Shared drives/Growth & Yield Lab/Data Sets/PGYI/2023-09-08 PGYI Export/regeneration.csv")
diff <- anti_join(regeneration, data2)
