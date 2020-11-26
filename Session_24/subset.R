data = as.data.frame(data)
female = subset(data, data$sex == 0)
female_treat = subset(female, data$assignmt == 1)
female_control = subset(female, data$assignmt == 0)

