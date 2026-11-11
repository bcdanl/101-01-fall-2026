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



# q2 ----------------------------------------------------------------------

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.3, size = 2) +
  geom_smooth() 


# q3 ----------------------------------------------------------------------

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income,
                     color = housing_type,
                     shape = housing_type)) +
  geom_point(alpha = 0.3, size = 2) +
  geom_smooth() +
  scale_color_tableau() 

# using color
ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income,
                     color = housing_type,
                     shape = housing_type,
                     fill = housing_type)) +
  geom_point(alpha = 0.3, size = 2) +
  geom_smooth() +
  scale_color_tableau()  +
  scale_fill_tableau() 



ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.3, size = 2) +
  geom_smooth() +
  facet_wrap(~ housing_type)





# using both color and facet
ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income,
                     color = housing_type,
                     fill = housing_type,
                     shape = housing_type,
                     linetype = housing_type)) +
  geom_point(alpha = 0.2, size = 2) +
  geom_smooth() +
  scale_color_colorblind() +
  scale_fill_colorblind() +
  facet_wrap(~ housing_type)



ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(color = "steelblue", 
             shape = 2, 
             alpha = 0.3)





# q5 ----------------------------------------------------------------------


ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.3, size = 2) +
  geom_smooth() +
  facet_wrap(~ housing_type)




# log transformations -----------------------------------------------------

gapminder_2007 <- read_csv(
  "https://bcdanl.github.io/data/gapminder.csv"
) |>
  filter(year == 2007)



ggplot(data = gapminder_2007,
       mapping = aes(x = gdpPercap,
                     y = lifeExp)) +
  geom_point(alpha =.5) + 
  geom_smooth()



# classwork 15 ------------------------------------------------------------

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
       mapping = aes(x = income)) +
  geom_histogram(fill = "steelblue", 
                 color = "white")

# base-10 log of income
ggplot(data = ny_customers,
       mapping = aes(x = log10(income))) +
  geom_histogram(fill = "steelblue", 
                 color = "white")




# q2 ----------------------------------------------------------------------

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = income)) +
  geom_point(alpha = 0.2) +
  geom_smooth(color = "steelblue", fill = "steelblue", alpha = 0.15) +
  geom_smooth(method = "lm", color = "orange", fill = "orange",
              linetype = "dashed")

ggplot(data = ny_customers,
       mapping = aes(x = age,
                     y = log10(income))) +
  geom_point(alpha = 0.2) +
  geom_smooth(color = "steelblue", fill = "steelblue", alpha = 0.15) +
  geom_smooth(method = "lm", color = "orange", fill = "orange",
              linetype = "dashed")



# time trends -------------------------------------------------------------

tech_october <- read_csv(
  "https://bcdanl.github.io/data/tech_stocks_2026_10.csv"
) 

tech_two <- tech_october |>
  filter(Ticker == "AAPL" | Ticker == "NVDA")

apple_october <- tech_two |>
  filter(Ticker == "AAPL")

msft_october <- tech_october |>
  filter(Ticker == "MSFT")




ggplot(data = apple_october,
       mapping = aes(x = Date,
                     y = Close)) +
  geom_line(color = "steelblue") +
  geom_point(color = "steelblue") +
  labs(
    x = "Date in October 2026",
    y = "Closing price (US$/share)"
  )


ggplot(data = apple_october,
       mapping = aes(x = Date,
                     y = Close)) +
  # geom_line(color = "steelblue") +
  geom_point(color = "steelblue") +
  labs(
    x = "Date in October 2026",
    y = "Closing price (US$/share)"
  )




ggplot(data = apple_october,
       mapping = aes(x = Date,
                     y = Close)) +
  geom_line(color = "steelblue") +
  # geom_point(color = "steelblue") +
  labs(
    x = "Date in October 2026",
    y = "Closing price (US$/share)"
  )


ggplot(data = msft_october,
       mapping = aes(x = Date,
                     y = Close)) +
  geom_line(color = "grey60") +
  geom_point(color = "steelblue") +
  # geom_smooth() +
  labs(
    x = "Date in October 2026",
    y = "Closing price (US$/share)"
  )



ggplot(data = msft_october,
       mapping = aes(x = Date,
                     y = Close)) +
  geom_line(color = "grey60") +
  geom_point(color = "steelblue") +
  geom_smooth() +
  labs(
    x = "Date in October 2026",
    y = "Closing price (US$/share)"
  )




# Incorrect grouping
ggplot(data = tech_two,
       mapping = aes(x = Date,
                     y = Close)) +
  geom_point(color = "steelblue") +
  geom_line(color = "grey60") +
  labs(
    x = "Date",
    y = "Closing price (US$/share)"
  )



ggplot(data = tech_two,
       mapping = aes(x = Date,
                     y = Close,
                     color = Ticker,
                     linetype = Ticker
                     )) +
  geom_line(linewidth = 1) +
  scale_color_colorblind() +
  labs(
    x = "Date",
    y = "Closing price (US$/share)",
    color = "Company",
    linetype = "Company")
