## Import .csv, convert to correct PGYI specs, drop unwanted fields added by Tesera, and apply "data smoothing" rules
# Read .csv, convert "." to NA
photo_avi <- fread(paste0(input.dir,"/photo_avi.csv"), na.string=".")
fwrite(photo_avi,"GYPSY data/intermediate/i_photo_avi.csv",row.names=F)

fwrite(photo_avi,"H:/Shared drives/Model Comparison/Compilation_Code_R/PGYI Compiled/i_photo_avi.csv",row.names=F)
