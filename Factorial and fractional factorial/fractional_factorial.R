redditFFD <- read.csv("redditFFD.csv", header = TRUE)

model.full <- lm(y~(A+B+C+D+E+F)^6, data = redditFFD)
summary(model.full)
library(FrF2)
aliases(model.full)

model.fullish <- lm(y ~ A+B+C+D+E+F+A:B+A:C+A:D+A:E+A:F+B:D+B:F+A:B:D+A:B:F, data = redditFFD)
summary(model.fullish)