
library(tidyverse)

mpg <- mpg

# gg: Grammar of Graphics
ggplot()

ggplot(data = mpg)

ggplot(data = mpg,
       mapping = aes(x = cty)) 


ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram()

# colors in histogram
ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(
    color = "white",
    fill = "steelblue"
  )



# classwork 10 ------------------------------------------------------------


# bin width of  1 city MPG
ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(
    color = "white",
    fill = "steelblue",
    binwidth = 1
  )

# bin width of 5 city MPG
ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(
    color = "white",
    fill = "steelblue",
    binwidth = 5
  )



# Don't do this
ggplot(data = mpg,
       mapping = aes(y = cty)) +
  geom_histogram(
    color = "white",
    fill = "steelblue",
    binwidth = 5
  )




# facet -------------------------------------------------------------------


ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(
    color = "white",
    fill = "steelblue",
    binwidth = 2
  ) +
  facet_wrap(~ drv)

# scales = "free_x"
ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(
    color = "white",
    fill = "steelblue",
    binwidth = 2
  ) +
  facet_wrap(~ drv, 
             scales = "free_x")


# scales = "free"
ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(
    color = "white",
    fill = "steelblue",
    binwidth = 2
  ) +
  facet_wrap(~ drv, 
             scales = "free")



# colorblind-friendly color palettes --------------------------------------

# install.packages("ggthemes")  # Install once
library(ggthemes)            # Load in each R session



ggplot(data = mpg,
       mapping = aes(x = cty, 
                     fill = drv)) +
  geom_histogram(binwidth = 2, 
                 color = "white",
                 show.legend = FALSE) +
  facet_wrap(~ drv) +
  scale_fill_colorblind()






ggplot(data = mpg,
       mapping = aes(x = cty, fill = drv)) +
  geom_histogram(binwidth = 2, color = "white",
                 show.legend = FALSE) +  # Hide the legend (color key)
  facet_wrap(~ drv) +
  scale_fill_colorblind()   # Use a colorblind-friendly color palette for fills



# boxplots ----------------------------------------------------------------



ggplot(data = mpg,
       mapping = aes(x = drv,
                     y = cty,
                     fill = drv)) +
  geom_boxplot(show.legend = FALSE) +
  scale_fill_tableau() +
  labs(x = "Drive system",
       y = "City fuel economy (MPG)")


ggplot(data = mpg,
       mapping = aes(y = drv,
                     x = cty,
                     fill = drv)) +
  geom_boxplot(show.legend = FALSE) +
  scale_fill_tableau() +
  labs(y = "Drive system",
       x = "City fuel economy (MPG)")






# classwork 11 ------------------------------------------------------------


# q1 ----------------------------------------------------------------------

ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(binwidth = 2) +
  facet_wrap(~ drv)


# q2
# These groups contain different numbers of configurations. 
# Explain why a taller count bar alone 
# does not establish that a larger proportion of 
# that group falls in the bin.




# q3


ggplot(data = mpg,
       mapping = aes(x = cty,
                     y = drv)) +
  geom_boxplot()
  
  
  
  

ggplot(data = mpg,
       mapping = aes(x = cty,
                     y = drv,
                     fill = drv)) +
  geom_boxplot(show.legend = FALSE) +
  scale_fill_tableau()








# boxplot vs histogram
ggplot(data = mpg,
       mapping = aes(x = cty,
                     y = drv)) +
  geom_boxplot()


ggplot(data = mpg,
       mapping = aes(x = cty)) +
  geom_histogram(binwidth = 2) +
  facet_wrap(~ drv)


