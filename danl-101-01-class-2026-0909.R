a <- 1
b <- 2



# Quotation marks for the package name is necessary
  # when using install.packages()
# install.packages("tidyverse")

library(tidyverse)
mpg
ggplot2::mpg

# readr package provides read_csv()
df <- read_csv("https://bcdanl.github.io/data/spotify_all.csv")



# library(tidyverse)


# values ------------------------------------------------------------------

a <- 1
my_subject <- "DANL"
is_true_or_not <- TRUE
is_false_or_not <- FALSE


# variable ----------------------------------------------------------------

a <- 7.5



# assignment typo ---------------------------------------------------------

x <- 2
x < - 3



# mathematical equality is not an assignment operator ----------------------

# = is another assignment operator in R
z = 100
z = z + 1




# data type with class() --------------------------------------------------

class(TRUE)
class(2)
class(2L)
class(7.5)
class(a)
class(my_subject)

# anything that is quoted is CHARACTER
class("3")




# CHR ---------------------------------------------------------------------

campus <- "Geneseo"
class(campus)       # "character"

campus__ <- 'Geneseo'
class(campus__)       # "character"


class(Geneseo)

Geneseo <- 10000000
class(Geneseo)

Geneseo <- 10000000L
class(Geneseo)



# logicals ----------------------------------------------------------------

score <- 8.8

score == 8.8       # TRUE
8.8 == 8.8


score == 9.9       # FALSE
class(score == 8.8) # "logical"

this_is_logical <- score == 8.8


# vector ------------------------------------------------------------------

scores <- c(82, 59, 76)
regions <- c("North", "South", "West")
mixed <- c("3", 4, 5)

length(scores)     # 3
class(mixed)       # "character"
