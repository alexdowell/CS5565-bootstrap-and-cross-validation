library(ISLR2)
library(boot)
#### Part 3 ####
set.seed(3379)

cv.error <- rep(0, 8)
for (i in 1:8) {
  glm.fit <- glm(mpg ~ poly(displacement, i), data = Auto)
  cv.error[i] <- cv.glm(Auto, glm.fit)$delta[1]
}
cv.error