setwd("~/Downloads/num-optim-master/squadP/R")
sapply(list.files(pattern = "*.R"), source, .GlobalEnv)
set.seed(123)
myDF <- data.frame(y = sample(c("no", "yes"), size = 150, replace = TRUE, prob = c(0.90, 0.10)), x1 = rnorm(150))
fit <- squadP(formula = y ~ x1, data = myDF)
summary(fit)
coef(fit)
confint(fit, level = .99)
