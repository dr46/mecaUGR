# 01_descriptivos.R

# Estadísticos descriptivos para variables categóricas y numéricas
summary(meca[, c(3, 5:9, 11:14, 16)])

# Distribución de frecuencias relativas (porcentajes) para variables categóricas
sapply(meca[, c(3, 5, 6, 9, 11:14, 16)], function(col) round(prop.table(table(col)),2)*100)


