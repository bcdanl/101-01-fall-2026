library(tidyverse)
library(ggthemes)

mpg <- mpg
drv_counts <- mpg |>
  count(drv)


ggplot(data = drv_counts,
       mapping = aes(y = drv,
                     x = n)) +
  geom_col()



ggplot(data = drv_counts,
       mapping = aes(y = fct_reorder(drv, n),
                     x = n)) +
  geom_col()




# categorical distribution across groups ----------------------------------

flights <- nycflights13::flights

airline_flights <- flights |>
  filter(carrier == "AA" |
           carrier == "DL" |
           carrier == "UA")


airport_airline_counts <- airline_flights |> 
  count(origin, carrier)




ggplot(data = airline_flights,
       mapping = aes(x = origin,
                     fill = origin)) +
  geom_bar() +
  scale_fill_colorblind()


ggplot(data = airline_flights,
       mapping = aes(y = origin,
                     fill = origin)) +
  geom_bar() +
  scale_fill_colorblind()


# stacked bar chart -------------------------------------------------------


ggplot(data = airline_flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar() +
  scale_fill_colorblind()




# side-by-side bar chart --------------------------------------------------


ggplot(data = airline_flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar(position = "dodge") +
  scale_fill_colorblind()



# 100% stacked bar chart --------------------------------------------------

ggplot(data = airline_flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar(position = "fill") +
  scale_fill_colorblind() +
  labs(y = "Proportion")







# side-by-side bars -------------------------------------------------------

flights <- nycflights13::flights
flights |> 
  distinct(carrier)

ggplot(data = flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar(position = "dodge") +
  scale_fill_colorblind()



ggplot(data = flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar(position = "dodge")


ggplot(data = flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar(position = "dodge") +
  scale_fill_viridis_d()


# classwork 13 ------------------------------------------------------------

library(tidyverse)
library(ggthemes)

flights <- nycflights13::flights
destination_flights <- flights |>
  filter(month == 1 | month == 7,
         dest == "BOS" | dest == "LAX" | dest == "ORD")


# q1 ----------------------------------------------------------------------

ggplot(data = destination_flights,
       mapping = aes(x = month,
                     fill = dest)) +
  geom_bar() +
  scale_fill_colorblind()

ggplot(data = destination_flights,
       mapping = aes(x = factor(month),
                     fill = dest)) +
  geom_bar() +
  scale_fill_colorblind()

# now we do not know what color represents what destination
ggplot(data = destination_flights,
       mapping = aes(x = factor(month),
                     fill = dest)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_colorblind()



# q2 ----------------------------------------------------------------------

destination_month_counts <- destination_flights |>
  count(dest, month)

ggplot(data = destination_flights,
       mapping = aes(x = dest,
                     fill = factor(month))) +
  geom_bar(position = "dodge") +
  scale_fill_colorblind()

# BOS
# 1378 - 1245 = 133

# LAX
# 1500 - 1159 = 341

# ORD
# 1573 - 1269 = 304

# q3 ----------------------------------------------------------------------

ggplot(data = destination_flights,
       mapping = aes(x = factor(month),
                     fill = dest)) +
  geom_bar(position = "fill") +
  scale_fill_colorblind()

month_destination_counts <- destination_flights |> 
  count(month, dest)



#   Proportion of LAX flights in July 
# =  (# of LAX flights in July) / (# of all flights in July)
# = 1500 / (1500 + 1378 + 1573)
# = 0.34
# = 34%




# q4 ----------------------------------------------------------------------

ggplot(data = destination_flights,
       mapping = aes(x = dest,
                     fill = factor(month))) +
  geom_bar(position = "fill") +
  scale_fill_colorblind()

#   Proportion of July flights in LAX 
# =  (# of July flights in LAX) / (# of all flights in LAX)
# = 1500 / (1500 + 1159)
# = 0.56
# = 56%


# “Among the three selected destinations, 
# what share of July records were headed to LAX?”

# q3
ggplot(data = destination_flights,
       mapping = aes(fill = dest,
                     x = factor(month))) +
  geom_bar(position = "fill") +
  scale_fill_colorblind()

# q4
ggplot(data = destination_flights,
       mapping = aes(x = dest,
                     fill = factor(month))) +
  geom_bar(position = "fill") +
  scale_fill_colorblind()







# Q. “Among the three selected destinations, 
# what share of July records were headed to LAX?”

# q3 visualization seems more convenient to address this question.