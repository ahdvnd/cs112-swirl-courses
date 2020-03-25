plot(mpg ~ wt, data = mtcars, pch = 16, main = "mpg ~ wt")
abline(lm(mpg ~ wt, data = mtcars), col = "red", lty = 2)
abline(rq(mpg ~ wt, data = mtcars), col = "blue", lty = 2)
legend("topright", legend = c("lm", "rq"), col = c("red", "blue"), lty = 2)