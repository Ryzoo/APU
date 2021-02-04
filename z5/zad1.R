install.packages("mlr")
install.packages("readr")
install.packages("dplyr")
install.packages("party")
install.packages("rpart")

library("mlr")
library("readr")
library("dplyr")
library("party")
library("rpart")

normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
input<-data.frame(infert(2:8))
output<-data.frame(infert[1])
input_normalized <-normalize(input)
train<-data.frame(infert)
tree<-ctree(education~ age+parity+induced+case+spontaneous,data = train)
plot(tree)