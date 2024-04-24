# mecaUGR_master.R

# Importación de datos
meca <- read.csv2("meca.csv", stringsAsFactors = T)

# Estadísticos descriptivos del archivo
source("stx/01_descriptivos.R", echo = T, encoding = "UTF-8")

