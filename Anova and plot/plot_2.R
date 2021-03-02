pinterest <- read.csv("pinterest.csv", header = TRUE)

mean.tss <- aggregate(x = pinterest$Y, by = list(TSS = pinterest$TSS), FUN = mean)
mean.tss
plot(x = 1:3, y = mean.tss$x, xlab = "TSS", ylab = "Avg. RSR", pch = 16, xaxt = "n", ylim = c(0,0.2))
lines(x = 1:3, y = mean.tss$x)
axis(side = 1, at = 1:3, labels = c("A", "B", "C"))