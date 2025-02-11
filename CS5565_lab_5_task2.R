library(ISLR2)
#### Part 2 ####
set.seed(3379)

#### 69.9% Training ####
train <- sample(392, 274)
lm.fit <- lm(mpg ~ horsepower, subset = train)
mean((mpg - predict(lm.fit, Auto))[-train]^2)

lm.fit2 <- lm(mpg ~ poly(horsepower, 2), data = Auto, 
              subset = train)
mean((mpg - predict(lm.fit2, Auto))[-train]^2)

lm.fit3 <- lm(mpg ~ poly(horsepower, 3), data = Auto, 
              subset = train)
mean((mpg - predict(lm.fit3, Auto))[-train]^2)

#### 80.1% Training ####
train <- sample(392, 314)
lm.fit <- lm(mpg ~ horsepower, subset = train)
mean((mpg - predict(lm.fit, Auto))[-train]^2)

lm.fit2 <- lm(mpg ~ poly(horsepower, 2), data = Auto, 
              subset = train)
mean((mpg - predict(lm.fit2, Auto))[-train]^2)

lm.fit3 <- lm(mpg ~ poly(horsepower, 3), data = Auto, 
              subset = train)
mean((mpg - predict(lm.fit3, Auto))[-train]^2)

#### 90.005 ####
train <- sample(392, 353)
lm.fit <- lm(mpg ~ horsepower, subset = train)
mean((mpg - predict(lm.fit, Auto))[-train]^2)

lm.fit2 <- lm(mpg ~ poly(horsepower, 2), data = Auto, 
              subset = train)
mean((mpg - predict(lm.fit2, Auto))[-train]^2)

lm.fit3 <- lm(mpg ~ poly(horsepower, 3), data = Auto, 
              subset = train)
mean((mpg - predict(lm.fit3, Auto))[-train]^2)