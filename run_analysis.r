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

####################################
#3: Lifeboat
####################################
titanic$boat = ifelse(titanic$boat == '', 'NA', titanic$boat)

####################################
#4: Cabin
####################################
titanic$has_cabin_number = ifelse(titanic$cabin == '', 0,1)

####################################
#4: Save Cleaned Data
####################################
write.csv(titanic, 'data/titanic_cleaned.csv')
