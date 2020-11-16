plot(foodexp ~ income, data = engel, pch = 16, main = "foodexp ~ income")
abline(lm(foodexp ~ income, data = engel), col = "red", lty = 2)
abline(rq(foodexp ~ income, data = engel), col = "blue", lty = 2)
legend("topright", legend = c("lm", "rq"), col = c("red", "blue"), lty = 2)