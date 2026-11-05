library(tidyverse)

df_mpg <- ggplot2::mpg

ggplot(data = df_mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point()
