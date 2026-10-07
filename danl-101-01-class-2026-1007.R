
vec_w_NA <- c(1, NA, 3)
mean( vec_w_NA )

# na.rm = TRUE removes NA from the vector vec_w_NA 
# when calculating mean()
# (1 + 3) / 2

mean( vec_w_NA, na.rm = TRUE )




x <- c(1, NA, 3, 2)
mean(x)

mean(x, na.rm = TRUE)




# select() ----------------------------------------------------------------


flights <- nycflights13::flights

library(tidyverse)

flights |> 
  select(year, month, day)

flights_wo_year <- flights |> 
  select( -year )


# rename() ----------------------------------------------------------------

names(flights)


flights_tail <- flights |> 
  rename(tail_num = tailnum)




# data transformation workflow with pipes ---------------------------------

df <- flights |>
  filter(month == 1, !is.na(dep_delay)) |>
  arrange(desc(dep_delay)) |>
  select(origin, dest, dep_delay) |>
  rename(departure_delay = dep_delay)



df_intermediate <- flights |>
  filter(month == 1, !is.na(dep_delay)) 


df_intermediate_2 <- flights |>
  filter(month == 1, !is.na(dep_delay)) |> 
  arrange(desc(dep_delay))



# Classwork 7 -------------------------------------------------------------


library(tidyverse)
nyc_payroll_new <- read_csv("https://bcdanl.github.io/data/nyc_payroll_2025.csv")




# q1 ----------------------------------------------------------------------

# Fill in the blanks to create a new data.frame, df, 
# that keeps only the following five variables—
# Fiscal_Year, Agency_Name, First_Name, Last_Name, and Base_Salary
# —from nyc_payroll_new.


df <- nyc_payroll_new |>
  select(Fiscal_Year, Agency_Name, First_Name, Last_Name, Base_Salary)


# q2 ----------------------------------------------------------------------
# Using the df from Question 1, 
# fill in the blank to rename Agency_Name to Agency. 
# Save the updated data.frame back to df.

df <- df |>
  rename(Agency = Agency_Name)


# q3 ----------------------------------------------------------------------

# Using the df from Question 2, 
# fill in the blank to remove Fiscal_Year with select(). 
# Save the updated data.frame back to df.


df <- df |>
  select(- Fiscal_Year)







