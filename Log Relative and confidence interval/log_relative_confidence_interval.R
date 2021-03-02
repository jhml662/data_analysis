#define constants
n <- 50
ybar <- 2
pie <- seq(0, 1, 0.01)

#define function LRest
LRest <- function(pie, ybar, n) {
  -2*(n*ybar*(log(1-pie)-log(ybar/(ybar+1)))+n*(log(pie)-log(1/(ybar+1))))-qchisq(.95,1)
}

#find roots of LRest to get confidence interval
uniroot(LRest,interval=c(0.2, 0.3),ybar=2,n=50)$root
uniroot(LRest,interval=c(0.4, 0.5),ybar=2,n=50)$root

#define function LogRelative
LogRelative <- function(pie, ybar, n) {
  (n*ybar*(log(1-pie)-log(ybar/(ybar+1)))+n*(log(pie)-log(1/(ybar+1))))
}

#plot log relative likelihood function and also mark confidence interval
plot(pie, LogRelative(pie, 2, 50), xlim=c(0,0.6), 
     ylim=c(-10,0), ylab="y", xlab="x", type="l", main="Log-Relative Likelihood Function" )
abline(v=0.2611744,col="blue",lty=2)
abline(v=0.4111501,col="red",lty=2)
