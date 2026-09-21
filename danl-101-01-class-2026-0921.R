bills <- c(23, 45, 12, 67, 89,
           34, 56, 78, 90, 43)

mean(bills)
median(bills)


bills_flagged <- c(bills, 10000)

bills_flagged
mean(bills_flagged)
median(bills_flagged)



# mean --------------------------------------------------------------------

x <- c(60, 70, 80, 90, 100)
sum(x) / length(x)   # 80
mean(x)               # 80
median(x)


x_with_extreme <- c(60, 70, 80, 90, 10000)
mean(x_with_extreme)
median(x_with_extreme)


# weighted mean -----------------------------------------------------------

# 90 × .40 + 80 × .60
weighted.mean( c(90, 80), w = c(.4, .6) )
weighted.mean( c(90, 80), w = c(0.4, 0.6) )
weighted.mean( c(90, 80), w = c(4, 6) )

x <- c(60, 70, 80, 90, 100)
mean(x)               # 80
weighted.mean( x , w = c(1,1,1,1,1) )
weighted.mean( x , w = c(2,2,2,2,2) )


# median ------------------------------------------------------------------

x_odd <- c(1, 3, 3, 6, 7, 8, 9)
median(x_odd)

x_even <- c(1, 2, 3, 4, 5, 6, 8, 9)
median(x_even)



# mode --------------------------------------------------------------------


response <- c("Online", "In person", "Online",
              "Hybrid", "Online")
table(response)


mode(response)


# range -------------------------------------------------------------------

x <- c(60, 70, 80, 90, 100)
range(x)                  # 60 100: the endpoints
max(x)
min(x)
x_range <- max(x) - min(x) # 40: the width




# variance ----------------------------------------------------------------
x <- c(60, 70, 80, 90, 100)
var(x)


# standard deviation ------------------------------------------------------


sqrt(var(x))
sd(x)



# quartile ----------------------------------------------------------------
x <- c(60, 70, 80, 90, 100)
quantile(x, c(0.25, .5, .75))

quantile(x, c(0, 0.25, .5, .75, 1))



# IQR ---------------------------------------------------------------------


IQR(x)



