pinterest <- read.csv("pinterest.csv", header = TRUE)
full <- lm(Y ~ TSS + Size + Type, data = pinterest)
anova(full)