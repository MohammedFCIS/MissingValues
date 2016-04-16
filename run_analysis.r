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