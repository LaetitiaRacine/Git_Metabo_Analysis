
####################
#### Constantes ####
####################

# Inspired of OkabeIto color-blind friendly palette
color_code = c(
  "CTRL" = "#74B72E",
  "DON" = "#56B4E9",
  "2DG" = "#F0E442",
  "AOA" = "#999999",
  "CTRLak" = "#009E73",
  "DONaK" = "#0072B2",
  "2DGaK" = "#E69F00",
  "AOAaK" = "#000000",
  "VPA" = "#CC79A7"
)


###################
#### Functions ####
###################

# Finds last subfolder generated in the parent folder
pic_last_dir = function(parent_folder){
  dir = list.dirs(path = parent_folder, recursive = F, full.names = F)
  dir = dir[length(dir)]
  return(paste0(parent_folder,dir))
}

# Loads an RData file and returns it
loadRData <- function(fileName){
  load(fileName)
  get(ls()[ls() != "fileName"])
}
