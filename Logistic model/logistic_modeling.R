
library(plyr)
stitch <- read.csv("stitch.csv", header = TRUE)
stitch$SS <- revalue(stitch$SS, c("Yes" = 1))
stitch$SS <- revalue(stitch$SS, c("No" = -1))
stitch$CYL <- revalue(stitch$CYL, c("Yes" = 1))
stitch$CYL <- revalue(stitch$CYL, c("No" = -1))

model <- glm(y ~ SS * CYL,
             family = binomial(link = "logit"), data = stitch)
summary(model)
exp(2*(model$coefficients))
