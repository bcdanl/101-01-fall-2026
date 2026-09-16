
# functions ---------------------------------------------------------------

round(x = 3.14159)           # 3
round(3.14159)               # equivalent to `round(x = 3.14159)`

round(3.14159, digits = 2)   # 3.14
round(3.14159, digits = 3)   # 3.14

round(3.14159, 3)

round(2, 3.14159)

round(digits = 2, 3.14159)

# default for digits is 0
round(3.14159)
round(3.14159, digits = 0)



# package::name --------------------------------------------------------------

ggplot2::mpg

# below gives an error
mpg

library(ggplot2)
mpg

# Argument order matters for `stringr::str_c()`.
stringr::str_c("Data", "Analytics", sep = " ")  # "Data Analytics"
stringr::str_c("Data", "Analytics")
stringr::str_c("Data", "Analytics", sep = "")

# below returns an error
str_c("Data", "Analytics", sep = "")


library(stringr)
str_c("Data", "Analytics", sep = "")

str_c("Data","Analytics",sep = "")

# library(package1)
# library(package2)
# FN()
# If you want to use FN() from package1
# package1::FN()


# calculator --------------------------------------------------------------


2 * 9
2^4

2 + 3 * 2
(2 + 3) * 2



# log ---------------------------------------------------------------------

log10(100)
log(100)



# vectorized operations ---------------------------------------------------

prices <- c(10, 12, 9)

# i want to calculate increased prices by 5%

10 * 1.05
12 * 1.05
9 * 1.05

prices * 1.05
# 10.50  12.60  9.45

prices >= 10
# TRUE  TRUE  FALSE

10 >= 10
12 >= 10
9 >= 10


c(1, 10, 100) * c(1, 10, 100)
c(1, 10, 100) / c(1, 10, 100)
c(1, 10, 100) + c(1, 10, 100)
c(1, 10, 100) - c(1, 10, 100)




# Classwork 2 -------------------------------------------------------------

# Q1
state.name


# variable is US_states
# that is just a name


US_states <- state.name

US_states






# Q2
# colon operator can be used to construct an integer vector
1:3

# numbers <- c(10, 11, 12, 13, 14, ......)
numbers <- 10:50
numbers


# Q3
temp_F <- c(35, 88, 42, 84, 81, 30)
temp_C <- 5 / 9 * ( temp_F - 32 )




# Q4
# greeting

greeting <- "Hello, World!"
greeting





# Q5
char_vec <- c("1", "2", "3", "4")


num_vec <- as.numeric(char_vec)

int_vec <- as.integer(char_vec)
int_vec_ <- 1:4



# Q6
first_names <- c("John", "Jane")
last_names <- c("Doe", "Smith")

library(stringr)
full_names <- str_c(first_names, last_names)

full_names <- str_c(first_names, last_names, sep = " ")





