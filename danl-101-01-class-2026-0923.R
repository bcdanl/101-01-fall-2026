
# quartiles ---------------------------------------------------------------

x <- c(60, 70, 80, 90, 100)
x_q <- quantile(x, c(.25, .50, .75))   # 70 80 90

quantile(x, c(.25)) 
quantile(x, .25) 
quantile(x, .75) 
quantile(x, .5) 




# classwork 3 -------------------------------------------------------------


# Q1 ----------------------------------------------------------------------

x <- 1:25
mean(x)

length(x)

# sd(x)


# s = square root of variance
# varaiance = numerator / denominator
  # numerator =  sum of the suqared deviation from the mean
  #  (1 - 13)^2 + (2 - 13)^2 + (3 - 13)^2 + (4 - 13)^2 + ... + (25 - 13)^2 
  # denominator = n - 1

# step 1
x - mean(x)
# x - 13   # x - c(13, 13, 13, ...., 13)

# step 2
( x - mean(x) )^2

# step 3
sum( ( x - mean(x) )^2 )

# step 4

sum( ( x - mean(x) )^2 ) / ( length(x) - 1 )

# step 5

sqrt( sum( ( x - mean(x) )^2 ) / ( length(x) - 1 ) )


sd(x)


# step 6 ------------------------------------------------------------------

sqrt( sum( ( x - mean(x) )^2 ) / ( length(x) - 1 ) ) == sd(x)








# step 1
x_diff <- x - mean(x)

# step 2
x_diff_2 <- x_diff^2

# step 3
numerator <- sum( x_diff_2 )
denominator <- length(x) - 1

# step 4
x_var <- numerator / denominator

# step 5
x_sd <- sqrt(x_var)

# step 6
x_sd == sd(x)





# Q2 ----------------------------------------------------------------------

temp <- c(22, 28, 31, 25, 29)

temp_range <- max(temp) - min(temp)


# Q3 ----------------------------------------------------------------------

scores <- c(12, 7, 15, 10, 20, 18, 5, 14)

scores_qr <- quantile(scores, c(0.25, 0.50, 0.75))
scores_qr

scores_iqr <- IQR(scores)
scores_iqr



# filtering a vector ------------------------------------------------------

scores <- c(72, 85, 79, 91, 88)
scores[2]
scores[c(2,5)]


condition <- scores >= 85
condition
scores

scores[condition]


scores[ scores >= 85 ]



# classwork 4 -------------------------------------------------------------


# q1 ----------------------------------------------------------------------

my_vec <- c(-10, -20, 30, 10, 50, 40, -100)
beers <- c("BUD LIGHT", "BUSCH LIGHT", "COORS LIGHT", 
           "GENESEE LIGHT", "MILLER LITE", "NATURAL LIGHT")

# Write an R code to keep only the positive values in my_vec.

my_vec > 0

my_vec_posivie <- my_vec[ my_vec > 0 ]
my_vec_posivie

my_vec_non_positive <- my_vec[ my_vec <= 0 ]
my_vec_non_positive


# Use positional indexing to keep the beer names 
  # in positions 2, 4, and 6.
beers

beers[c(2, 4, 6)]

# q2 ----------------------------------------------------------------------

ages <- c(15, 22, 18, 24, 30)

# Create a logical vector logical_vec 
  # that checks whether the elements of the vector 
  # ages <- c(15, 22, 18, 24, 30) are greater than or equal to 20.


logical_vec <- ages >= 20
logical_vec


# Use logical_vec inside square brackets 
  # to keep only the ages that are greater than or equal to 20.

ages[ logical_vec ]  # this is equivalent to `ages[ ages >= 20 ]`




# pathnames ---------------------------------------------------------------

getwd()

# /Users/bchoe/Documents/101-01-fall-2026/danl-101-01-class-2026-0902.R



