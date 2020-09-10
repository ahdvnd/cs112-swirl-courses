# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

# swirl_options(swirl_logging = TRUE)

# Create fake data
x1 <- runif(200)
x2 <- rnorm(200)
x3 <- sample(0:1, 200, replace=TRUE)
y <- 1000*x1 + 100*x2 + 10*x3 + 10*rnorm(200)
df <- data.frame(x1, x2, x3, y)

# Split into train/test sets
set.seed(123)
train_idx <- sample(seq_len(nrow(df)), size = 100)
train_df  <- df[train_idx, ]
test_df <- df[-train_idx, ]

# Predict y
y_true = test_df$y

# RMSE function
calc_rmse <- function(ytrue, ypred) {
  res <- sum((ytrue - ypred)**2)
  return(sqrt(res/length(ypred)))
}

# R-squared function
calc_rsquared <- function(ytrue, ypred) {
  res <- sum((ytrue - ypred)**2)
  tot <- sum((ytrue - mean(ytrue))**2)
  return(1-res/tot)
}
