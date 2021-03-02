twitter <- read.csv("twitter-factorial.csv", header = TRUE)

mean.version <- aggregate(x = twitter$Y, by = list(Version = twitter$Version), FUN = mean)
mean.version
plot(x = 1:2, y = mean.version$x, xlab = "Recommendation System Version", ylab = "Mean RFR", pch = 16, xaxt = "n", ylim = c(0,0.2))
lines(x = 1:2, y = mean.version$x)
axis(side = 1, at = 1:2, labels = c("CF", "CBF"))

mean.socinf <- aggregate(x = twitter$Y, by = list(SocInf = twitter$SocInf), FUN = mean)
mean.socinf
plot(x = 1:3, y = mean.socinf$x, xlab = "Social Influence Information", ylab = "Mean RFR", pch = 16, xaxt = "n", ylim = c(0,0.2))
lines(x = 1:3, y = mean.socinf$x)
axis(side = 1, at = 1:3, labels = c("II", "FI", "NI"))
