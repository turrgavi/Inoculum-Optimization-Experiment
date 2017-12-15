#Read count relative abundance
#This has been pushed

setwd("/home/gavin/Inoculum-Optimization-Experiment/Data")
library(vegan)

data1 = as.matrix(read.delim(file="pca_test_txt.txt", sep="\t", header = T))
data1[is.na(data1)] = 0

ab.pca = prcomp(data1, scale. = TRUE)

