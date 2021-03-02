thirdlove <- read.csv(file = "thirdlove.csv", header = T)
Y <- thirdlove$Y
Condition <- thirdlove$Condition
pairwise.t.test(Y, factor(Condition), p.adjust.method = "none", alternative = "greater")
pairwise.t.test(Y, factor(Condition), p.adjust.method = "none", alternative = "two.sided")