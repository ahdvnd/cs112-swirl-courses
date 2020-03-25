# google_form_decode("https://docs.google.com/spreadsheets/d/e/2PACX-1vQCAQ5AzDnc9p-4mk463_UEnL197cIBaTxPe-OxP88I3kxc2jqT29GzgEC3W0LkCysei2iZsxMDhBeM/pub?gid=1186532089&single=true&output=csv")


# install_course_github("ahdvnd", "swirl-tbp", "cs112")
# devtools::install_github("gdancik/swirl-tbp", ref = "assign", force = TRUE)


# library(swirl)
library(swirlify)
demo_lesson()

# devtools::install_github("jtleek/swirl")


# install_course(swc_path = "/Users/Hadzzz/Google Drive/minerva_related/CS112/cs112-swirl-courses.swc")
library(devtools)
install_github("ahdvnd/swirlplus", force = TRUE)
library(swirl)
uninstall_all_courses()
install_course_github("ahdvnd", "cs112-swirl-courses")
swirl()



## Things to do for adding lessons
## add lesson to manifest
## set_lesson()
## pack




