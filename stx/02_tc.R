# 02_tc.R

# Tabla de contingencia para las variables de mecanografiar sin mirar al teclado y mecanografiar
# usando todos los dedos.
saber <- table(meca$mtd, meca$msm, deparse.level = 2)
saber

# Proporciones totales para la tabla anterior.
saber.p <- round(prop.table(saber)*100,2)
saber.p

# Gráfico de barras para la tabla de frecuencias anterior.
barplot(saber.p, 
        beside = T,
        ylab = "Porcentaje de personas",
        xlab = "¿Mecanografiar sin mirar al teclado?",
        col = c(1,0), legend.text = c("¿Usas todos los dedos?: No", "¿Usas todos los dedos?: Sí"),
        ylim = c(0,40),
        axes = F)

axis(2, las=2)

# Tabla de contingencia para utilidad y saber mecanografiar sin mirar al teclado.
utilidad <- table(meca$util, meca$msm, deparse.level = 2)
utilidad

# Tabla de proporciones para la tabla de contingencia anterior
utilidad.p <- round(prop.table(utilidad)*100, 2)
utilidad.p

# Gráfico de barras para la tabla de contingencia anterior
barplot(utilidad.p, 
        beside = T,
        ylab = "Porcentaje de personas",
        xlab = "¿Mecanografiar sin mirar al teclado?",
        col = c(1,0), legend.text = c("La mecanografía no es útil", "La mecanografía es útil"),
        ylim = c(0,60),
        axes = F)
axis(2, las=2)
