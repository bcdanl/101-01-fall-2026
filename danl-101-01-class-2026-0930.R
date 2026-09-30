library(tidyverse)

# pipe --------------------------------------------------------------------


# Read the CSV file directly from the web (GitHub repo)
custdata <- read_csv(
  'https://bcdanl.github.io/data/custdata_rev.csv')


nrow(custdata)
custdata |> nrow()



# filter() ----------------------------------------------------------------

df <- data.frame(
  num = c(8, 9, 10, 11),
  chr = c("A", "C", "B", "A")
)

df

df |> 
  filter(num > 8)

df_greater_8 <- df |> 
  filter(num > 8)



# logical operators -------------------------------------------------------

!TRUE
!FALSE



df |> 
  filter(num > 8 & 
           num < 11)

df |> 
  filter(num > 8,
         num < 11)


# install.packages("nycflights13")
library(nycflights13)
flights <- flights
?flights


skimr::skim(flights$year)

# tibble is another name of data.frame
flights_jan_dec <- flights |> 
    filter(month == 1 | month == 12)

# don't use | like below:
flights_error <- flights |> 
  filter(month == 1 | 12)

# January 1 flights
jan_1 <- flights |> 
  filter(month == 1, day == 1)




# NA ----------------------------------------------------------------------

NA > 5

10 == NA
NA + 10
NA / 2
(1 + NA + 3) / 3

mean( c(1, NA, 3) )
sd( c(1, NA, 3) )

v1 <- NA
v2 <- NA
v1 == v2


is.na(NA)

num_missing <- NA
is.na(num_missing)  # is num_missing NA?

text_missing <- "missing"
is.na(text_missing) # is text_missing NA?

V1 <- c(1, NA, 3)
is.na(V1)  # is V1 NA?
!is.na(V1)  # is V1 not NA?



df <- data.frame(
  v1 = c(1, NA, 3),
  v2 = c(1, 2, 3)
)

df |> 
  filter( is.na(v1) )

df |> 
  filter( !is.na(v1) )



# arrange() ---------------------------------------------------------------

flights |> 
  arrange(dep_delay)
