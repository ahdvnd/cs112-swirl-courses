### Steps for installing and running the courses
(a) Install Swirl First, if you don't have the `devtools` packages

```r
install.packages("devtools")
```

Then load the package:

```r
library(devtools)
```

This installs the swirl package from Github. Please DO NOT install swirl from CRAN by typing `install.packages("swirl")`

```r
install_github("ahdvnd/swirlplus", force = TRUE)
```

You'll only have to perform the steps above once this session. You don't have to do them for every pre-class work. 
The following steps need to be done for every pre-class work and every time you open your RStudio to use swril.

Follow the following steps in Swirl in R. Assuming you have already installed Swirl, you will need to only do the following steps:

```r
library(swirl)
uninstall_all_courses()
```

Then select 1. Then run the following:

```r
install_course_github("ahdvnd", "cs112-swirl-courses")
```

If not working, first make sure you have swirl installed. Otherwise, restart your R session and load swirl again.
Finally, run the below command for starting swirl and doing the exercises.

```r
swirl()
```

After this, you will be guided to do the exercises step by step.
Any time you want to quit swirl, just type `bye()` or press Esc. Once you are done with the exercise, a unique code is generated for you to paste it in the Google Forms with the line. This is for us to track your pre-class works. Note: If you are dealing with firewalls in your country and can't perform the steps above, you can follow the steps in this guide to install swirl and do the exercises.
