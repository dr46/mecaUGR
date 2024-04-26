# mecaUGR_master.R

# Importación de datos
meca <- read.csv2("dat/meca.csv", stringsAsFactors = T)

# Estadísticos descriptivos del archivo
source("stx/01_descriptivos.R", echo = T, encoding = "UTF-8")


# Tablas de contingencia
source("stx/02_tc.R", echo = T, encoding = "UTF-8")

# Relación entre velocidad y precisión de mecanografiado
source("stx/03_rl.R", echo = T, encoding = "UTF-8")

# Recodificación de sugerencia del nivel mínimo al que se debería comenzar con 
# la enseñanza del aprendizaje de la mecanografía
read.csv("dat/snem.csv", sep=";", stringsAsFactors=TRUE)