library(tidyverse)
library(ggthemes)
# install.packages("ggthemes")
ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy,
                     color = drv)) +
  geom_point(alpha = .3) +
  geom_smooth() +
  scale_color_tableau() +
  labs(
    x = "Engine size (liters)",
    y = "Highway fuel economy (mpg)",
    color = "Drive system"
  )



ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy,
                     color = drv,
                     fill = drv,
                     linetype = drv)) +
  geom_point() +
  geom_smooth() +
  scale_color_tableau() +
  scale_fill_tableau() +
  labs(x = "Engine size (liters)",
       y = "Highway fuel economy (mpg)",
       color = "Drive system",
       fill = "Drive system",
       linetype = "Drive system")



# don't do this:
ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy,
                     color = "steelblue")) +
  geom_point(alpha = 0.5)




# classwork 14 ------------------------------------------------------------

library(tidyverse)
library(ggthemes)

custdata <- read_csv("https://bcdanl.github.io/data/custdata_rev.csv")
ny_customers <- custdata |>
  filter(state_of_res == "New York", 
         income > 10000, income < 250000, 
         age >= 25,
         housing_type == "Rented" | 
           housing_type == "Homeowner with mortgage/loan" |
           housing_type == "Homeowner free and clear")



# q1 ----------------------------------------------------------------------

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.2)



ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.2) +
  geom_smooth()


# q2 ----------------------------------------------------------------------

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.2) +
  geom_smooth()

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.2) +
  geom_smooth(method = "lm")

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.2) +
  geom_smooth(method = "lm", se = FALSE)

# q3 ----------------------------------------------------------------------

ny_customers |> 
  count(housing_type)

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income,
                     color = housing_type,
                     shape = housing_type)) +
  geom_point(alpha = .3, size = 2) +
  geom_smooth() +
  scale_color_tableau()


# q4 ----------------------------------------------------------------------



ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = .3, size = 2, shape = 3) +
  geom_smooth() +
  scale_color_tableau()






