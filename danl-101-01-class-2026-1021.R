library(tidyverse)
mpg <- ggplot2::mpg

?mpg


# histogram

ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram()

# labs()
ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram() +
  labs(x = "City MPG")


# color names should be quoted
ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(
    fill = "blue",
    color = "red"
  )



ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(
    fill = "steelblue",
    color = "white",
    binwidth = 1
  )



ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(
    fill = "steelblue",
    color = "white",
    binwidth = 5
  )



# classwork 10 ------------------------------------------------------------

ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(binwidth = 1)

ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(binwidth = 5)

