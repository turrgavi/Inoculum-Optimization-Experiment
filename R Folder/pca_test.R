#Read count relative abundance

setwd("C:/Users/gavin/Google Drive/University of Queensland/ACE Research project/Psychrophilic Methanogensis/Inoculum Optimization Experiment/Findings")
 
data = read.csv("pca_test.csv")

library(vegan)

log.ab = log(data[,3:5])

ab.species = data[,2]

ab.pca = prcomp(log.ab, scale. = TRUE, na.omit(data))