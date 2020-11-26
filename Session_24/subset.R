library(dplyr)
female = data %>% 
    as.data.frame() %>% 
    filter(sex == 0)
    
female_treat = female %>% 
    filter(assignmt == 1)

female_control = female %>% 
    filter(assignmt == 0)

