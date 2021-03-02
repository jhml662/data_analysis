twitter <- read.csv("twitter-factorial.csv", header = TRUE)
Y <- twitter$Y
Version <- twitter$Version
SocInf <- twitter$SocInf
interaction.plot(Version, SocInf, Y,  main = "Version-by-SocInf Interaction",
                 xlab = "Version", ylab = "RFR", ylim = c(0, 0.2), 
                 trace.label = "SocInf")
interaction.plot(SocInf, Version, Y,  main = "SocInf-by-Version Interaction",
                 xlab = "SocInf", ylab = "RFR", ylim = c(0, 0.2), 
                 trace.label = "Version")