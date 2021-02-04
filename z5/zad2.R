install.packages("mlr")
install.packages("readr")
install.packages("dplyr")
install.packages("party")
install.packages("rpart")
install.packages("C50")

library("mlr")
library("readr")
library("dplyr")
library("party")
library("rpart")
library("C50")


normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

setwd("C:/Users/mistr/Desktop/R_lab5_workspace")
data = read.csv("macbook_data_frame.csv", header = TRUE)
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

## Define the task
task =
  makeClassifTask(id = deparse(substitute(data)), data, target,
                  weights = NULL, blocking = NULL, coordinates = NULL,
                  positive = NA_character_, fixup.data = "warn", check.data = TRUE)
makeClusterTask(id = deparse(substitute(data)), data, weights = NULL,
                blocking = NULL, coordinates = NULL, fixup.data = "warn",
                check.data = TRUE)
makeCostSensTask(id = deparse(substitute(data)), data, costs,
                 blocking = NULL, coordinates = NULL, fixup.data = "warn",
                 check.data = TRUE)
makeMultilabelTask(id = deparse(substitute(data)), data, target,
                   weights = NULL, blocking = NULL, coordinates = NULL,
                   fixup.data = "warn", check.data = TRUE)
makeRegrTask(id = deparse(substitute(data)), data, target,
             weights = NULL, blocking = NULL, coordinates = NULL,
             fixup.data = "warn", check.data = TRUE)
makeSurvTask(id = deparse(substitute(data)), data, target,
             weights = NULL, blocking = NULL, coordinates = NULL,
             fixup.data = "warn", check.data = TRUE)
