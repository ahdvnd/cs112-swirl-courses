female = data[which(data$sex == 0),]
female_treat = female[which(female$assignmt == 1),]
female_control = female[which(female$assignmt == 0),]
