####################################
#Load Libraries
####################################
suppressMessages(library(dplyr))
suppressMessages(library(tidyr))

####################################
#0: Load the data
####################################
titanic = tbl_df(read.csv("data/titanic_original.csv", stringsAsFactors = FALSE))

####################################
#1: Port of embarkationtit
####################################
titanic$embarked = ifelse(titanic$embarked == '', 'S', titanic$embarked)

####################################
#2: Age
####################################
titanic$age = ifelse(is.na(titanic$age), mean(titanic$age, na.rm = TRUE), titanic$age) 
