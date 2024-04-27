# 05_donde.R

dems <- read.csv("dat/dems.csv", sep=";")

tabla.frec <- table(dems$demc)
tabla.frec

round(prop.table(tabla.frec)*100,2)

rm(tabla.frec, dems)