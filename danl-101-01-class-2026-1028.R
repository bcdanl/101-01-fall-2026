library(tidyverse)

mpg <- mpg


mpg_drv_4 <- mpg |> filter(drv == 4)


nrow(mpg_drv_4)





# bar chart for dist of categorical var ---------------------------------

mpg |> 
  distinct(class)


ggplot(data = mpg,
       mapping = aes(x = class)) +
  geom_bar()


ggplot(data = mpg,
       mapping = aes(y = class)) +
  geom_bar()



library(ggthemes)

ggplot(data = mpg,
       mapping = aes(y = class,
                     fill = class)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_colorblind() +
  labs(y = "Class",
       x = "Number of vehicles")


# category texts may overlap
ggplot(data = mpg,
       mapping = aes(x = class,
                     fill = class)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_colorblind() +
  labs(x = "Class",
       y = "Number of vehicles")


# count() with arrange()
class_counts <- mpg |> 
  count(class) |> 
  arrange(desc(n))



class_counts <- mpg |> 
  count(class)


# below is not appropriate!
ggplot(data = class_counts,
       mapping = aes(y = class)) +
  geom_bar()


# geom_col()
ggplot(data = class_counts,
       mapping = aes(y = class)) +
  geom_col()


# geom_col()
ggplot(data = class_counts,
       mapping = aes(y = class,
                     x = n)) +
  geom_col()



# 
ggplot(data = class_counts,
       mapping = aes(
          x = n,
          y = fct_reorder(class, n)
         )) +
  geom_col()


# argument order when using fct_reorder() is important
ggplot(data = class_counts,
       mapping = aes(
         x = n,
         y = fct_reorder(n, class)
       )) +
  geom_col()



# classwork 12 - dist of cat var ------------------------------------------

library(tidyverse)
library(ggthemes)

mpg <- mpg



# q1 ---------------------------------------------------------------------

ggplot(data = mpg,
       mapping = aes(y = fl,
                     fill = fl)) +
  geom_bar() +
  scale_fill_colorblind()



# q2 ----------------------------------------------------------------------

fuel_counts <- mpg |> 
  count(fl)

ggplot(data = fuel_counts,
       mapping = aes(x = n,
                     y = fl,
                     fill = fl)) +
  geom_col() +
  scale_fill_colorblind()



ggplot(data = fuel_counts,
       mapping = aes(x = n,
                     y = fct_reorder(fl, n),
                     fill = fl)) +
  geom_col() +
  scale_fill_colorblind()



# reorder categories by n in descending order

# fct_reorder(CATEGORICAL, NUMERICAL)
# fct_reorder(CATEGORICAL, -NUMERICAL)
ggplot(data = fuel_counts,
       mapping = aes(x = n,
                     y = fct_reorder(fl, -n),
                     fill = fl)) +
  geom_col() +
  scale_fill_colorblind()





# cat dist across groups --------------------------------------------------

flights <- nycflights13::flights

airline_flights <- flights |>
  filter(carrier == "AA" |
           carrier == "DL" |
           carrier == "UA")


airport_airline_counts <- airline_flights |> 
  count(origin, carrier)



airline_airport_counts <- airline_flights |> 
  count(carrier, origin)


ggplot(data = airline_flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar() +
  scale_fill_tableau()


# legend info is necessary for stacked bar charts
ggplot(data = airline_flights,
       mapping = aes(x = origin,
                     fill = carrier)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_tableau()



# stacked bar chart -------------------------------------------------------------



# side-by-side bar chart --------------------------------------------------



# 100% stacked bar chart --------------------------------------------------


