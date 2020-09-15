install.packages("swirl")
library(swirl)
library(swirlify)
demo_lesson()

## Things to do for adding lessons
## add lesson to manifest
set_lesson()
pack_course()



## Instruction for students

# If you don't have the devtools packages
# first install it!
# install.packages("devtools")
library(devtools)
# This installs the modified swirl package from Github
# Please do NOT install the swirl package by typing install.packages("swirl)
# We are going to use a modified version of the package on my Github
install_github("ahdvnd/swirlplus", force = TRUE)
## you only have to perform the steps above once!



## This you have to do everytime you open your RStudio to use swirl
library(swirl)
# don’t need to do this step if doing this for the first time
uninstall_all_courses()
# this installs the lessons content
1
install_course_github("ahdvnd", "cs112-swirl-courses")
# if not working, restart your session
# run the below command for starting swirl
swirl()



# 
# # install_course(swc_path = "/Users/Hadzzz/Google Drive/minerva_related/CS112/cs112-swirl-courses.swc")
# library(devtools)
# install_github("ahdvnd/swirlplus", force = TRUE, lib = Sys.getenv("R_LIBS_USER"))
# library(swirl)
# uninstall_all_courses()
# 1
# install_course_github("ahdvnd", "cs112-swirl-courses")
# # if not working, restart your session
# swirl()
# Aboozar
# 1



# simple_reg <- glm(pbs2s3 ~ untype4 + wartype + logcost + wardur + factnum + factnum2 + trnsfcap + treaty + develop + exp + decade, family= binomial, data = peacekeeping)
# summary(simple_reg)
# genout <- GenMatch(X = X, Tr = peacekeeping$untype4)
# matchout.gen <- Match(X = X, Tr = peacekeeping$untype4, Y = peacekeeping$pbs2s3, Weight.matrix=genout)
# 
# library(quantreg)
# rqfit <- rq(foodexp ~ income, tau = .5, data = engel)
# summary(rqfit)
# rq(foodexp ~ income, tau = , data = engel)
# rq(foodexp ~ income, tau = c(0.25, 0.50, 0.75), data = engel)
# 
# 




