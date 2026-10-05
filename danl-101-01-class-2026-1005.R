library(tidyverse)

df <- data.frame(
  v1 = c(1, NA, 3),
  v2 = c(1, 2, 3)
)

df

df |> 
  filter( is.na(v1) )

df |> 
  filter( !is.na(v1) )


library(nycflights13)

flights <- flights

jan_dec <- flights |> 
  filter(month == 1 | month == 12)

jan_1 <- flights |> 
  filter(month == 1 & day == 1)
  


# arrange() ---------------------------------------------------------------

flights |> 
  arrange(dep_delay)

# Sort by dep_delay, 
# then by sched_dep_time
flights |> 
  arrange(dep_delay, sched_dep_time)


flights |> 
  arrange( desc(dep_delay) )


flights |> 
  arrange( -dep_delay )


flights |> 
  arrange( -carrier )
flights |> 
  arrange( desc(carrier) )

df <- data.frame(
  year = c(2024, 2021, 2024, 2024),
  month = c(7, 10, 7, 4),
  day = c(20, 19, 15, 9)
)


df

df |> 
  arrange(year, month, day)


# distinct() --------------------------------------------------------------

df <- data.frame(
  country = c("USA", "Korea", "USA"),
  city = c("D.C.", "Seoul", "D.C."),
  subregion = c("Georgetown", 
                "Gangnam", 
                "Georgetown") 
)


df

df |> 
  distinct()

flights_distinct <- flights |> 
  distinct()

# flights has only distinct observations
nrow(flights_distinct) == nrow(flights)


# unique origin-dest combinations
origin_dest <- flights |> 
  distinct(origin, dest) |> 
  arrange(origin, dest)


flights |> 
  distinct(origin)



# classwork 6 -------------------------------------------------------------


# Q1 ----------------------------------------------------------------------

library(tidyverse)
flights <- nycflights13::flights

# (a) Find all flights that had an arrival delay of 
# two or more hours.

q1a <- flights |> 
  filter(arr_delay >= 120)


# nrow(q1a) / nrow(flights)

# (b) Find all flights that flew to Houston (IAH or HOU).
q1b <- flights |> 
  filter(dest == "IAH" | dest == "HOU")


# (c) Find all flights that departed in summer 
    # (July, August, and September).

q1c <- flights |> 
  filter(month == 7 | month == 8 | month == 9)


q1c_mistake <- flights |> 
  filter(month == 7 & month == 8 & month == 9)



# (d) Find all flights that arrived more than two hours late, 
# but did not leave late. 
  # An on-time or early departure has a departure delay of 
  # zero or less.

q1d <- flights |> 
  filter(arr_delay > 120 & dep_delay <= 0)





# q2 ----------------------------------------------------------------------

# How many flights have a missing dep_time?

q2 <- flights |> 
  filter( is.na(dep_time) )

nrow(q2)


flights |> 
  filter( is.na(dep_time) ) |> 
  nrow()



# q3 ----------------------------------------------------------------------

example_flights <- data.frame(
  flight = c("A", "B", "C", "D"),
  dep_delay = c(10, 30, 0, 60)
)

head(example_flights, 2)

example_flights |> 
  head(2)



# Sort flights to find the most delayed flights 
# by departure delay (dep_delay), with the largest delay first.

q3 <- flights |> 
  arrange( -dep_delay )

flights |>
  arrange(desc(dep_delay)) |>
  head(5)

# q4 ----------------------------------------------------------------------

# Was there a flight on every day of 2013?
  
# Count unique calendar dates. 
# A date needs its year, month, and day; 
# the day-of-month alone repeats across months. 

# Compare the count with the number of days in 2013.

q4 <- flights |> 
  select(year, month, day) |> 
  distinct()



flight_dates <- flights |>
  distinct(year, month, day)

number_of_days <- nrow(flight_dates)
number_of_days

number_of_days == 365


