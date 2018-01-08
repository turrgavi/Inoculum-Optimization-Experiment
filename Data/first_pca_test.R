#Read count relative abundance
#This has been pushed

setwd("C:/Users/gavin/Google Drive/University of Queensland/ACE Research project/Psychrophilic Methanogensis/Inoculum Optimization Experiment/Data")
#setwd("/home/gavin/Inoculum-Optimization-Experiment/Data")
library(vegan)
library(pca3d)

data1 = as.matrix(read.delim(file="pca_test_txt.txt", sep="\t", header = T))
data1[is.na(data1)] = 0

ab.pca = prcomp(data1, scale. = TRUE)


#pca2d(ab.pca, group = gr, biplot = TRUE, show.labels = FALSE)

biplot(ab.pca)