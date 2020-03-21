# will be called at the start of lesson
# can use to specify token functions
gen.var <-function() {
  vars = c("x", "y", "v", "num", "X", "Y")
  sample(vars, 1)
}

#################################################
# Generate tailored hints based on user response 
#################################################
createVectorHint <- function(){
  e <- get("e", parent.frame())
  ans = c(e$token.list$num1, e$token.list$num2)
 
  # if user response makes no sense, return NA and give default hint 
  if (!is.numeric(e$val)) return(NA)

  #Check that user enters correct number of values
  if (length(ans) != length(e$val)) {
	return ("The vector should contain 2 numbers only.")
  }

  # if the user and correct answer vectors are identical, only 
  # error would be that the vector name is not correct
  if (all(e$val== ans)) {
	return ("Make sure to use the correct vector name.")	
  } 
  return (NA)
}

########################################################################
# Shades the area under the normal curve between a and b 
# This area corresponds to P (a <= x <= b) when X ~ N (mean, sd)
# For P (x <= b) set a = -Inf
# For P (x >= a) set b = Inf
########################################################################
shade.norm <- function(a,b, mean = 0, sd = 1,  ...) {
  # set up legend
  loc = "topright" 
  leg = paste0("P(X>",a,")         ")
  if (a == -Inf) {
  	loc = "topleft"
  	leg = paste0("P(X<",b,")")
  } else if (b != Inf) {
  	if (a < 0) loc = "topleft"
	leg = paste0("P(",a,"< X < ",b,")        ")
  }
  main = paste0("X~N(",mean,",",sd,")")

  m1 = mean-4*sd
  if (!is.infinite(a)) m1 = min(a,m1)
  m2 = mean+4*sd
  if (!is.infinite(b)) m2 = max(b,m2)
  x = seq(m1,m2, length.out = 100)
  plot(x, dnorm(x, mean = mean, sd = sd), type = "l", ylab = "normal density", main = main,...)
  if (is.infinite(a)) a = m1
  if (is.infinite(b)) b = m2
  r = seq(a,b,length.out=100)
  cord.x <- c(a,r,b)
  cord.y <- c(0,dnorm(r, mean = mean, sd = sd),0)
  polygon(cord.x,cord.y,col='skyblue')
  abline(h = 0)
  legend(loc, leg, bty = 'n')
}


############################################################################
# Functions to provide graphical hints for questions of the form 
# find P(X < val) or P(X>val) when X is normally distributed
############################################################################
calcNormProbHintLT <-function() calcNormProbHint(FALSE)
calcNormProbHintGT <-function() calcNormProbHint(TRUE)

calcNormProbHint <- function(gt) {
  e <- get("e", parent.frame())
  hint = "Use the 'pnorm' function to find the desired probability, as indicated by the graph, and assign the probability to 'P'"
  if (!gt) {
     shade.norm(-Inf,e$token.list$val, mean = e$token.list$mu, sd = e$token.list$sigma)
  } else {
     shade.norm(e$token.list$val, Inf, mean = e$token.list$mu, sd = e$token.list$sigma)
  } 
  return (hint)
}
