install.packages("mlr")
install.packages("DiscriMiner")
install.packages("rFerns")
install.packages("randomForestSRC")
library("mlr")
library("DiscriMiner")
library("rFerns")
library("randomForestSRC")

normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}


setwd("C:/Users/mistr/Desktop/R_lab5_workspace")
data <- read.csv("macbook_data_frame.csv")
data$ocena<-factor(data$ocena)
data$ekran<-normalize(data$ekran)
data$ram<-normalize(data$ram)
data$dysk<-normalize(data$dysk)
data<-data.frame(data)
zadanie = makeClassifTask(id = 'macbooki', 
                          data, 
                          "ocena",
                          weights = NULL, 
                          blocking = NULL, 
                          coordinates = NULL,
                          positive = NA_character_, 
                          fixup.data = "warn", 
                          check.data = TRUE)
ponowne_probkowanie = makeResampleDesc("Bootstrap", iters = 3)
metody_uczenia <- makeLearners(c("rpart", "C50","rFerns","randomForestSRC","linDA"), type = "classif")
porownanie_metod_uczenia <- benchmark(learners = metody_uczenia,
                                      tasks = zadanie,
                                      resampling = ponowne_probkowanie)