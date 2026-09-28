
# absolute pathname of the CSV file ---------------------------------------


library(tidyverse)
df <- read_csv("/Users/alex/Downloads/custdata_rev.csv")



# relative path -----------------------------------------------------------

getwd()
custdata <- read_csv("data/custdata_rev.csv")




# web address -------------------------------------------------------------

# Read the CSV file directly from the web (GitHub repo)
custdata_web <- read_csv(
  'https://bcdanl.github.io/data/custdata_rev.csv')



# getting to know data.frame ----------------------------------------------

class(custdata)
dim(custdata)
nrow(custdata)
ncol(custdata)
names(custdata)

summary(custdata)

# Install once
# install.packages("skimr") 

library(skimr)
skim(custdata)
custdata_sum <- skim(custdata)



# $ operator --------------------------------------------------------------


custdata_age <- custdata$age

summary(custdata$age)
skim(custdata$age)

skim(custdata$custid)

