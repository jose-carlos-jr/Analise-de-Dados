getwd()
setwd("/Users/josec/Documents/Dados")












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
