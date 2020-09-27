install.packages("googlesheets4")
library(googlesheets4)
library(stringr)
library(dplyr)


subs = read_sheet("1aUSIgj3KmHyiiz7H2CwOS4zp-NtDoaB4hihV0dbd05A") %>% 
    as.data.frame()

colnames(subs) = c("timestamp", "name", "lesson", "secret", "section")

subs = subs %>% 
    mutate(valid = str_detect(secret, "CS112"))


# this is a clean data after getting rid of duplicates
# shows how many submissions each student has
subs_clean = subs %>% 
    filter( valid == TRUE) %>% 
    group_by(secret) %>% 
    slice(1) %>% 
    ungroup() %>% 
    group_by(name) %>% 
    summarise(total_subs = n())


# The code below checks whether the person had entered the same
# secret twice. Secrets aer unique
subs_check_duplicate = subs %>% 
    filter( valid == TRUE) %>% 
    group_by(secret) %>% 
    mutate(n=n()) %>% 
    filter(n>1) %>% 
    ungroup() %>% 
    group_by(name, lesson) %>% 
    slice(1)



  
