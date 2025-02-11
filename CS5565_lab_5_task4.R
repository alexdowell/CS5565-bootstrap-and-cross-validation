library(ISLR2)
library(boot)
#### Part 4 ####
set.seed(3379)

cv.error.5 <- rep(0, 8)
for (i in 1:8) {
  glm.fit <- glm(mpg ~ poly(weight, i), data = Auto)
  cv.error.5[i] <- cv.glm(Auto, glm.fit, K = 5)$delta[1]
}
cv.error.5

cv.error.10 <- rep(0, 8)
for (i in 1:8) {
  glm.fit <- glm(mpg ~ poly(weight, i), data = Auto)
  cv.error.10[i] <- cv.glm(Auto, glm.fit, K = 10)$delta[1]
}
cv.error.10