#Cover.R
#this file contains all of the parameters and is the main directory for the flow of the simulation

setwd("C:/Users/HP/Box/New Computer/Auburn/Data/SummerABM")
setwd("~/GDrive/Willoughby lab/summer coding project/SummerABM/")
directory = getwd()
outdir = paste(directory,"/output/", sep="")
source(paste(directory, "/source/FunctionSourcer.R", sep =''))

#example IBM code

#set parameters > initialize pop > age > reproduce

#parameters
maxage.V        = 3 #add one at first, so they will die at 4, start at -1
timeperiod.V    = 50 #or years
broodsize.V     = 1 #aka fecundity, remember that this is typically not constant in life; potentially Poisson distribution
k.V             = 100 #aka carrying capacity. this will have variance but be roughly this size
sexratio.V      = 0.5 
maturity.V      = 1 #this is the age they can start to reproduce
#if you think you will change this later on, it is easier to put in as a parameter

#generate list of combos
replicates = expand.grid(maxage.V, timeperiod.V, broodsize.V, k.V, sexratio.V, maturity.V) #gives all combinations possible
colnames(replicates) = c("maxage", "timeperiod", "broodsize", "k", "sexratio", "maturity")

#run model iterating over parameters in replicates
for(r in 1:nrow(replicates)){
  RunModel(replicates, r, directory)
}
