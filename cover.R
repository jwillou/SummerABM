#Cover.R
#this file contains all of the parameters and is the main directory for the flow of the simulation

setwd("C:/Users/HP/Box/New Computer/Auburn/Data/SummerABM")
#example IBM code

#set parameters > initialize pop > age > reproduce

#parameters
maxage        = 3 #add one at first, so they will die at 4, start at -1
timeperiod    = 50 #or years
broodsize     = 1 #aka fecundity, remember that this is typically not constant in life; potentially Poisson distribution
k             = 100 #aka carrying capacity. this will have variance but be roughly this size
sexratio      = 0.5 
maturity      = 1 #this is the age they can start to reproduce
#if you think you will change this later on, it is easier to put in as a parameter

#generate list of combos
replicates = expand.grid(maxage, timeperiod, broodsize, k, sexratio, maturity) #gives all combinations possible
colnames(replicates) = c("maxage", "timeperiod", "broodsize", "k", "sexratio", "maturity")

#run model iterating over parameters in replicates
for(r in 1:nrow(replicates)){
  RunModel(replicates, r, directory)
}
