library(ISLR2)
library(boot)

#### Part 5 ####

# Define the bootstrapping function for quadratic fit
boot.fn <- function(data, index, size) {
  coef(
    lm(mpg ~ horsepower + I(horsepower^2), 
       data = data, subset = index), 
    x = TRUE, y = TRUE, size = size
  )
}

# Set the seed for reproducibility
set.seed(3379)

# Define the data and the number of bootstrapping iterations
data <- Auto
R <- 1000

# Perform bootstrapping with 250 samples
boot250 <- boot(data, boot.fn, R = R, size = 250)
cat("Quadratic fit with 250 samples:\n")
print(summary(lm(mpg ~ horsepower + I(horsepower^2), data = Auto))$coef)

# Perform bootstrapping with 500 samples
boot500 <- boot(data, boot.fn, R = R, size = 500)
cat("Quadratic fit with 500 samples:\n")
print(summary(lm(mpg ~ horsepower + I(horsepower^2), data = Auto))$coef)

# Perform bootstrapping with 2500 samples
boot2500 <- boot(data, boot.fn, R = R, size = 2500)
cat("Quadratic fit with 2500 samples:\n")
print(summary(lm(mpg ~ horsepower + I(horsepower^2), data = Auto))$coef)