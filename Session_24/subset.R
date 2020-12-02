library(dplyr)
female = data %>% 
    as.data.frame() %>% 
    filter(sex == 0)
    
#female_treat = female %>% 
#    filter(assignmt == 1)

#female_control = female %>% 
#    filter(assignmt == 0)

female = data[which(data$sex == 0),]
female_treat = female[which(female$assignmt == 1),]
female_control = female[which(female$assignmt == 0),]