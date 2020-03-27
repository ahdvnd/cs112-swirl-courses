
# library(swirl)
library(swirlify)
demo_lesson()

# devtools::install_github("jtleek/swirl")

## Things to do for adding lessons
## add lesson to manifest
## set_lesson()
## pack








# install_course(swc_path = "/Users/Hadzzz/Google Drive/minerva_related/CS112/cs112-swirl-courses.swc")
library(devtools)
install_github("ahdvnd/swirlplus", force = TRUE)
library(swirl)
uninstall_all_courses()
1
install_course_github("ahdvnd", "cs112-swirl-courses")
# if not working, restart your session
swirl()





simple_reg <- glm(pbs2s3 ~ untype4 + wartype + logcost + wardur + factnum + factnum2 + trnsfcap + treaty + develop + exp + decade, family= binomial, data = peacekeeping)
summary(simple_reg)
genout <- GenMatch(X = X, Tr = peacekeeping$untype4)
matchout.gen <- Match(X = X, Tr = peacekeeping$untype4, Y = peacekeeping$pbs2s3, Weight.matrix=genout)

library(quantreg)
rqfit <- rq(foodexp ~ income, tau = .5, data = engel)
summary(rqfit)
rq(foodexp ~ income, tau = , data = engel)
rq(foodexp ~ income, tau = c(0.25, 0.50, 0.75), data = engel)






