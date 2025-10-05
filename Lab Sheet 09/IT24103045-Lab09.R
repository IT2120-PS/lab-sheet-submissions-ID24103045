getwd()
setwd("C:/Users/user/OneDrive/Desktop/IT24103045")
# Question 1
# Baking time is normally distributed with mean = 45, sd = 2

# (i) Generate a random sample of size 25
set.seed(1)  # Optional: keeps results consistent when re-running
baking_time <- rnorm(25, mean = 45, sd = 2)
baking_time

# (ii) One-sample t-test
# Test if average baking time is less than 46 minutes (H1: mean < 46)
t_test_result <- t.test(baking_time, mu = 46, alternative = "less")
t_test_result

#There is sufficient evidence at the 5% significance level to conclude that the average baking time is less than 46 minutes.