getwd()
setwd("C:/Users/user/OneDrive/Desktop/IT24103045r")
#Problem 1 (Binomial)
# An IT company's learning platform: 85% pass rate, 50 students
n <- 50
p <- 0.85

# i) Distribution:
# X ~ Binomial(n=50, p=0.85)

# ii) Probability that at least 47 students passed:
# P(X >= 47) = 1 - P(X <= 46)
prob_at_least_47 <- 1 - pbinom(46, size = n, prob = p)
cat("Problem 1:\n")
cat("Distribution: X ~ Binomial(n=50, p=0.85)\n")
cat("P(X >= 47) =", prob_at_least_47, "\n\n")

#Problem 2 (Poisson)
lambda <- 12

# i) Random variable:
# X = number of calls received in one hour

# ii) Distribution:
# X ~ Poisson(lambda = 12)

# iii) Probability that exactly 15 calls are received:
prob_X_eq_15 <- dpois(15, lambda)

# print results
cat("Problem 2:\n")
cat("Random variable: X = number of calls received in one hour\n")
cat("Distribution: X ~ Poisson(lambda = 12)\n")
cat("P(X = 15) =", prob_X_eq_15, "\n")
