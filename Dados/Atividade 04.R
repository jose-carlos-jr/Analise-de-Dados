getwd()
setwd("/Users/josec/Documents/Dados")

#Slaid 04 
sp500_px <- read.csv('sp500_px.csv')
sp500_sym <- read.csv('sp500_px.csv')
telecom <- sp500_px[, sp500_sym[sp500_sym$sector=='telecommunications_services', 'symbol']]
telecom <- telecom[row.names(telecom)> '2012-07-01', ]
telecom_cor <- cor(telecom)
library(ascii)
ascii(telecom_cor, digits=c(3,3,3,3,3), align=c("l", "r", "r", "r", "r", "r"), caption="Correlation between telecom",
      include.rownames = TRUE, include.calnames = TRUE)










# Slaid 05
state <- read.csv("state.csv")
mean(state[["Population"]])
mean(state[["Population"]], trim=0.1) #o trim=0.1 ta eliminando 10% acima e 10% abaixo dos valores.
median(state[["Population"]])

weighted.mean(state[["Murder.Rate"]], w-state[["Population"]])


# Slaid 07
sd(state[["Population"]]) #desvio padrao, o quão a população ta dispersa.

# Slaid 08
IQR(state[["Population"]])

# Slaid 09
quantile(state[["Murder.Rate"]], p=c(.25, .5, .75))

boxplot(state[["Population"]]/1000000, ylab="Population (millions)") #ylab= legenda

# Slaid 10
breaks <- seq(from-min(state[["Population"]]), to-max(state[["Population"]]), length=11)

pop_freq <- cut(state[["Population"]], breaks = breaks, right = TRUE, include.lowest = TRUE)
state["PopFreq"] <- pop_freq
table(pop_freq)

options(scipen = 999)
hist(state[["Population"]], breaks = breaks)
