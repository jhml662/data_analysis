thirdlove <- read.csv(file = "thirdlove.csv", header = T)
model <- lm(Y ~ factor(Condition), data = thirdlove)
summary(model)
anova(model)