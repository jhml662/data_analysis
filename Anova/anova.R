eaze <- read.csv("eaze.csv", header = TRUE)
full <- lm(Y ~ ColourCode + ProdType, data = eaze)
anova(full)