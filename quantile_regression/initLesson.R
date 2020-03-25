# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

# swirl_options(swirl_logging = TRUE)

peacekeeping <- read.csv("https://tinyurl.com/y2zt2hyc")

# Take 2-3 minutes and familiarize yourself with the basic contours of the data.extract relevant columns

peacekeeping <- peacekeeping[, c(6:8, 11:16, 99, 50, 114, 49, 63, 136, 109, 126, 48, 160, 142, 10)]

# remove 2 rows with missing data (there are better ways to handle missing data, 
# but this is fine for now.)
peacekeeping <- peacekeeping[c(-19, -47), ]

X = cbind(peacekeeping$wartype, peacekeeping$logcost, peacekeeping$wardur, 
          peacekeeping$factnum, peacekeeping$factnum2, peacekeeping$trnsfcap,
          peacekeeping$treaty, peacekeeping$develop, peacekeeping$exp, 
          peacekeeping$decade)

