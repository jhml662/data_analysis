library(gplots)
redditFD <- read.csv("redditFD.csv", header = TRUE)
model <- glm(y ~ A * B * C * D * E * F, data = redditFD)

par(mfrow = c(2,2))
plotmeans(formula = y~A, ylab = "Average Session Duration", xlab = "Opening Feed (A)",
          data = redditFD, xaxt = "n", ylim = c(0, 10), pch = 16)
axis(side = 1, at = c(1,2), labels = c("Home (L)", "Popular (H)"))
plotmeans(formula = y~B, ylab = "Average Session Duration", xlab = "Feed Type (B)",
          data = redditFD, xaxt = "n", ylim = c(0, 10), pch = 16)
axis(side = 1, at = c(1,2), labels = c("Pagination (L)", "Infinite Scroll (H)"))
plotmeans(formula = y~C, ylab = "Average Session Duration", xlab = "Ad Frequency (C)",
          data = redditFD, xaxt = "n", ylim = c(0, 10), pch = 16)
axis(side = 1, at = c(1,2), labels = c("9:1 (L)", "4:1 (H)"))
plotmeans(formula = y~E, ylab = "Average Session Duration", xlab = "Related Communities (E)",
          data = redditFD, xaxt = "n", ylim = c(0, 10), pch = 16)
axis(side = 1, at = c(1,2), labels = c("Absent (L)", "Present (H)"))

A <- redditFD$A
B <- redditFD$B
C <- redditFD$C
y <- redditFD$y
par(mfrow=c(1,2))
interaction.plot(A, B, y, ylab = "Average Session Duration", xlab = "Opening Feed (A)",
                 main = "", legend = F, xaxt = "n", ylim = c(0, 10))
points(x = c(1,1), y = c(mean(redditFD[redditFD$A==-1 & redditFD$B==-1,]$y),
                         mean(redditFD[redditFD$A==-1 & redditFD$B==1,]$y)), pch = 16)
points(x = c(2,2), y = c(mean(redditFD[redditFD$A==1 & redditFD$B==-1,]$y),
                         mean(redditFD[redditFD$A==1 & redditFD$B==1,]$y)), pch = 16)
axis(side = 1, at = c(1,2), labels = c("Home (L)", "Popular (H)"))
legend("topleft", legend = c("Feed Type (B)", "Infinite Scroll (H)", "Pagination (L)"),
       lty = c(1, 1, 2), col=c("white", "black", "black"), cex = 0.75, bty = "n")

interaction.plot(B, C, y, ylab = "Average Session Duration", xlab = "Feed Type (B)",
                 main = "", legend = F, xaxt = "n", ylim = c(0, 10))
points(x = c(1,1), y = c(mean(redditFD[redditFD$B==-1 & redditFD$C==-1,]$y),
                         mean(redditFD[redditFD$B==-1 & redditFD$C==1,]$y)), pch = 16)
points(x = c(2,2), y = c(mean(redditFD[redditFD$B==1 & redditFD$C==-1,]$y),
                         mean(redditFD[redditFD$B==1 & redditFD$C==1,]$y)), pch = 16)
axis(side = 1, at = c(1,2), labels = c("Pagination (L)", "Infinite Scroll (H)"))
legend("topleft", legend = c("Ad Frequency (C)", "4:1 (H)", "9:1 (L)"),
       lty = c(1, 1, 2), col=c("white", "black", "black"), cex = 0.75, bty = "n")
