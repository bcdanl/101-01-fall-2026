# comparison operators
# ==
# >
# <
  # 2 < -3
# >=
# <=


# = is another assignment operator
# We will mostly use <- for assignments

# Assignemnt in programming is not equialent to mathematical equality

z = 100  # z <- 100
z = z + 9



# vectors -----------------------------------------------------------------

x <- 10
scores <- c(82, 59, 76)
scores

regions <- c("North", "South", "West")

mixed <- c("3", 4, 5)
mixed__ <- c(FALSE, 4, 5)
mixed____ <- c(TRUE, 4, 5)

length(scores)     # 3
length(mixed__)

length( c(10) )
length(10)
length("ABC")
length(TRUE)


class(mixed)       # "character"



# factors -----------------------------------------------------------------

chr_vec <- c("New", "Returning", "New")

status <- factor(chr_vec)
status

levels(status)     # "New" "Returning"
nlevels(status)    # 2

# I would not do the followings:
levels(chr_vec)
nlevels(chr_vec)



# converting data types ---------------------------------------------------

price_text <- "4.39"
price <- as.numeric(price_text)

class(price_text)  # "character"
class(price)       # "numeric"


as.integer(4.39)
class( as.integer(4.39) )
as.integer(4.99)

as.numeric(TRUE)
as.numeric(FALSE)

# Not Available, this concept will be discussed later
as.numeric("ABC") 
as.numeric("ABC_100")

as.character(100)
as.character(TRUE)

as.logical(0)
as.logical(1)



# + in Console ------------------------------------------------------------

# greeting <- "hello



# functions ---------------------------------------------------------------

mean( c(60,70,80) )

# By default, digits = 0
round(3.14159)               # 3
round(3.14159, digits = 2)   # 3.14

# for round(), the order of arguments does not matter
round(digits = 2, 3.14159) 



# double colon operators --------------------------------------------------

mpg <- 20

# R_PACKAGE :: SOME OBJECT THIS R_PACKAGE PROVIDES
ggplot2::mpg
mpg

stringr::str_c("Data", "Analytics", sep = " ")
# "Data Analytics"

stringr::str_c("Data", "Analytics", sep = "")


# DEFAULT: sep = ""
stringr::str_c("Data", "Analytics")


# Order of arguments matters for stringr::str_c()
stringr::str_c("Analytics", "Data")








