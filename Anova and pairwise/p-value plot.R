p1 <- 0.00025
p2 <- 8.3*10^-16
p3 <- 1.2*10^-12
p4 <- 2.9*10^-6
p5 <- 0.00018
p6 <- 0.83448
p7 <- 0.33104

alpha.star <- 0.1
p = c(p1, p2, p3, p4, p5, p6, p7)
M <- length(p)
rank <- seq(0, M+1, 0.001)

plot(x = 1:M, y = sort(p), pch = 16, ylab = "Sorted p-values", xlab = "Rank", 
     ylim = c(0, max(alpha.star, max(p))), xaxt = "n")
axis(side = 1, at = 1:M, labels = 1:M)

abline(h = alpha.star/M, col = "red", lty = 2)
lines(x = rank, y = alpha.star/(M-rank+1), col = "blue", lty = 2)
abline(a = 0, b = alpha.star/M, col = "purple", lty = 2)

legend("topleft", legend = c("Bonferroni", "Holmes", "BH"), bty = "n", 
        col = c("red", "blue", "purple"), lty = 2, cex = 0.8)
