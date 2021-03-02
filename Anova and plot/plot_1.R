pinterest <- read.csv("pinterest.csv", header = TRUE)

mean.size <- aggregate(x = pinterest$Y, by = list(Size = pinterest$Size), FUN = mean)
mean.size
plot(x = 1:3, y = mean.size$x, xlab = "Size", ylab = "Avg. RSR", pch = 16, xaxt = "n", ylim = c(0,0.2))
lines(x = 1:3, y = mean.size$x)
axis(side = 1, at = 1:3, labels = c("S", "M", "L"))

mean.type <- aggregate(x = pinterest$Y, by = list(Type = pinterest$Type), FUN = mean)
mean.type
plot(x = 1:3, y = mean.type$x, xlab = "Type", ylab = "Avg. RSR", pch = 16, xaxt = "n", ylim = c(0,0.2))
lines(x = 1:3, y = mean.type$x)
axis(side = 1, at = 1:3, labels = c("P", "FFV", "APV"))