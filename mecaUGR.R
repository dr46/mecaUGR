# mecaUGR_master.R

# Importación de datos
meca <- read.csv2("dat/meca.csv", stringsAsFactors = T)

# Estadísticos descriptivos del archivo
source("stx/01_descriptivos.R", echo = T, encoding = "UTF-8")

# Tablas de contingencia
source("stx/02_tc.R", echo = T, encoding = "UTF-8")

# Relación entre velocidad y precisión de mecanografiado
source("stx/03_rl.R", echo = T, encoding = "UTF-8")

# ¿Cuándo comenzar a aprender mecanografía? 
source("stx/04_cuando.R", echo = T, encoding = "UTF-8")

# ¿Dónde has expermientado merama en la calidad del servicio como consecuencia
# de incompetencia mecanográfica?
source("stx/05_donde.R", echo = T, encoding = "UTF-8")
