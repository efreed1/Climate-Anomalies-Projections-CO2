library(readxl)

so2 <- read_excel("so2data.xlsx")

#U.S. SO2 EMISSIONS

plot(so2$Year, so2$SO2, cex=0.4, pch=19, col="blue",
     lines.default(so2$Year, so2$SO2, col="blue",lwd=1),
     main="United States SO2 Emissions",
     ylab="SO2 (Tg)",
     xlab="Year")
