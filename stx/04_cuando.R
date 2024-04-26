# 04_cuando.R

snem <- read.csv("dat/snem.csv", sep=";", stringsAsFactors=TRUE)

cuando <- table(snem$snm)
cuando

round(prop.table(cuando)*100,2)

rm(cuando, snem)