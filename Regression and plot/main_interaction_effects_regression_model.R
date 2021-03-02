library(lmtest)
twitter <- read.csv("twitter-factorial.csv", header = TRUE)

main <- glm(Y ~ Version + SocInf, data = twitter, family = binomial(link = "logit"))
full <- glm(Y ~ Version * SocInf, data = twitter, family = binomial(link = "logit"))
lrtest(main, full)
