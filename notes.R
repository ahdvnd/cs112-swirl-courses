## for packing a course, we need to use swirlify
## but swirlify does not work with Aboozar's version 
## of the swirl so we should install swirl from CRAN
## but for running the courses we should go back to 
## Aboozar's version.
install.packages("swirl")
library(swirl)
library(swirlify)
demo_lesson()

## Things to do for adding lessons
## add lesson to manifest
set_lesson()
## we only need to pack a course once a new lesson is written. 
## We don't have to do it when we modify a lesson or fix it.
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
install_course_github("ahdvnd", "cs112-swirl-courses")
# if not working, restart your session
# run the below command for starting swirl
swirl()
Aboozar

