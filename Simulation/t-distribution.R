p_values <- pt(rt(100000, 998), 998)
hist(p_values, main="Histogram of P-Values")
uniform_values <- runif(100000)
qqplot(p_values, uniform_values, main="QQ-Plot")