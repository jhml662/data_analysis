library(lmtest)
twitter <- read.csv("twitter-factorial.csv", header = TRUE)

main <- glm(Y ~ Version + SocInf, data = twitter, family = binomial(link = "logit"))
red1 <- glm(Y ~ Version, data = twitter, family = binomial(link = "logit"))
red2 <- glm(Y ~ SocInf, data = twitter, family = binomial(link = "logit"))

lrtest(red1, main)
lrtest(red2, main)