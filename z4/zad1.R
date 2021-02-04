install.packages("C50")
library("C50")
setwd("C:/Users/mistr/Desktop/R_lab4_workspace")
data = read.csv("macbook_data_frame.csv", header = TRUE)
input<-data[1:16,2:4]
output<-factor(data[1:16,5])
m1<-C5.0(input,output)
plot(m1)
