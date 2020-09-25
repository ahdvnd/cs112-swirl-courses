# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

# swirl_options(swirl_logging = TRUE)

library(Matching)
data(lalonde)

calc_rmse <- function(ytrue, ypred) {
  res <- sum((ytrue - ypred)**2)
  return(sqrt(res/length(ypred)))
}

set.seed(112)