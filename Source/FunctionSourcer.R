#FunctionSourcer.R

#Set working directory, import packages, source functions, 
setwd(paste(directory,"/source/", sep = ''))    # set temp working directory 

#import packages
#library()

#source functions
source(paste(getwd(), "/RunModel.R", sep = ''))
source(paste(getwd(), "/AgeUp.R", sep = ''))
source(paste(getwd(), "/Mortality.R", sep = ''))
