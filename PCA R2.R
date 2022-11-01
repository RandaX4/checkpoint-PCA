data<-read.csv("C:/Users/EXTRA/Downloads/HR_comma_sep.csv")
HR_standardize<-as.data.frame(scale(data[1:8]))
HR_standardize
data.mat <- as.matrix(HR_standardize)
cov.mat <- cor(HR_standardize)
pca <- prcomp(HR_standardize,center = T,scale. = T)
summary(pca)
library(ggfortify)
autoplot(pca,data=HR_comma_sep,colour=('Salary')

         