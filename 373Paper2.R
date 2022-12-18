library(readxl)
tempdata <- read_excel("tempdata.xlsx")

#MONTHLY, YEARLY GLOBAL TEMPERATURE ANOMALIES

par(mfrow=c(1, 2))

plot(tempdata$Year, tempdata$Anomaly, cex=0.1, pch=19, col="blue",
   lines.default(tempdata$Year, tempdata$Anomaly, col="corn flower blue",lwd=0.7)
        abline(h=-0.45, lwd=1, lty=3, col="maroon")
        abline(h=-0.1, lwd=1, lty=3, col="maroon")
          main="Observed vs. Projected Temperature Anomalies With \n and Without Human Influence",
          cex.main=0.8,
          cex.lab=0.8,
          cex.axis=0.8,
          xlab="Year",
          ylab="Temperature Anomaly (C)")
  
#CO2 PPM
  
  plot(tempdata$yr, tempdata$ppm, cex=0.1, pch=19, col="dark red",
     lines.default(tempdata$yr, tempdata$ppm, col="red", lwd=0.7),
          cex.main=0.8,
          cex.lab=0.8,
          cex.axis=0.8,
          main="Atmospheric CO2 Concentrations",
          xlab="Year",
          ylab="CO2 PPM")
  
#DATA FROM BERKELEY EARTH, MAUNA LOA OBSERVATORY
