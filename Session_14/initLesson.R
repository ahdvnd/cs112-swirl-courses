# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

# swirl_options(swirl_logging = TRUE)

city.names = c("A", "B", "C", "D", "E", "F", "G", "H")
observed.turnout = c(18, 30, 14, 52, 24, 29, 48, 49)
treatment = c(0, 1, 0, 1, 0, 1, 0, 1)

ri_data <- data.frame(city.names, observed.turnout, treatment)



### A FUNCTION FOR FISHER TEST WITH ANY SHARP NULL 
### (i.e., sharp nulls can be zero or non-zero)

general.Fisher <- function(data, iter = 5000, null = 0) {
    
    results <- NA
    
    treated.outcomes <- data$observed.turnout[data$treatment == 1]
    control.outcomes <- data$observed.turnout[data$treatment == 0]
    
    treated.counterfactuals <- treated.outcomes - null
    control.counterfactuals <- control.outcomes + null
    
    Y1s <- cbind(treated.outcomes, control.counterfactuals)
    Y0s <- cbind(treated.counterfactuals, control.outcomes)
    
    for(i in 1:iter) {  
        assignment1 <- sample(c(1,2))
        
        Y1.pair1 <- Y1s[1,assignment1[1]]
        Y0.pair1 <- Y0s[1,assignment1[2]]
        
        
        assignment2 <- sample(c(1,2))
        
        Y1.pair2 <- Y1s[2,assignment2[1]]
        Y0.pair2 <- Y0s[2,assignment2[2]]
        
        
        assignment3 <- sample(c(1,2))
        
        Y1.pair3 <- Y1s[3,assignment3[1]]
        Y0.pair3 <- Y0s[3,assignment3[2]]
        
        
        assignment4 <- sample(c(1,2))
        
        Y1.pair4 <- Y1s[4,assignment4[1]]
        Y0.pair4 <- Y0s[4,assignment4[2]]
        
        
        results[i] <- mean(
            c(
                Y1.pair1 - Y0.pair1,
                Y1.pair2 - Y0.pair2,
                Y1.pair3 - Y0.pair3,
                Y1.pair4 - Y0.pair4
            )
        )
    }
    return(results)
}


