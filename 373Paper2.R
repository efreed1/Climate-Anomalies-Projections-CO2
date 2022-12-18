library(readxl)

tempdata <- read_excel("Desktop/files/academic/college/2022-2023/STATS 371/Homework /tempdata.xlsx", sheet = "Sheet1")
tempdata2 <- read_excel("Desktop/files/academic/college/2022-2023/STATS 371/Homework /tempdata.xlsx", sheet = "Sheet2")

#99% CONFIDENCE RANGE OF PRE-INDUSTRIAL MEAN

sum(tempdata2$AnoLim)
X=sum(tempdata2$AnoLim)/length(tempdata2$AnoLim)
Z=2.807*(sd(tempdata2$AnoLim)/sqrt(length(tempdata2$AnoLim)))
L=X-Z
U=X+Z

par(mfrow=c(1, 2))

#OBSERVED MONTHLY TEMPERATURE ANOMALIES VS PROJECTED MEAN WITHOUT HUMAN ACTIVITIES

plot(tempdata$Year, tempdata$Anomaly, cex=0.05, pch=19, col="light blue",
  lines.default(tempdata$Year, tempdata$Anomaly, col="corn flower blue",lwd=0.7),
      main="Observed vs. Projected Temperature Anomalies With \n and Without Human Influence",
      cex.main=0.8,
      cex.lab=0.8,
      cex.axis=0.8,
      xlab="Year",
      ylab="Temperature Anomaly (C)")
        abline(h=U, lwd=1, lty=3, col="maroon")
        abline(h=L, lwd=1, lty=3, col="maroon")
    
#YEARLY CO2 CONCENTRATIONS IN PPM
  
plot(tempdata$yr, tempdata$ppm, cex=0.1, pch=19, col="dark red",
  lines.default(tempdata$yr, tempdata$ppm, col="red", lwd=0.7),
      cex.main=0.8,
      cex.lab=0.8,
      cex.axis=0.8,
      main="Atmospheric CO2 Concentrations",
      xlab="Year",
      ylab="CO2 PPM")
