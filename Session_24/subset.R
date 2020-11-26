female = subset(data, sex == 0)
female_treat = subset(female, assignmt == 1)
female_control = subset(female, assignmt == 0)
