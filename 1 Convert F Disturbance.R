## Import .csv, convert to correct PGYI specs, drop unwanted fields added by Tesera, and apply "data smoothing" rules
# Read .csv, convert "." to NA
disturbance <- fread(paste0(input.dir,"/disturbance.csv"), na.string=".")
fwrite(disturbance,"H:/Shared drives/Model Comparison/Compilation_Code_R/PGYI Compiled/i_disturbance.csv",row.names=F)

