#Age-related death

Mortality = function(pop){
  pop1 = pop[-which(pop[,4] >= maxage),]
  pop = pop1
  return(pop)
}

#I have tried a few things but they dont seem to work. line 3 has tried age and maxage; age seems to be the correct one
# I have tried setting equal or greater than maxage, which doesnt seem to work
# right now, matrix goes empty when trying to run Mortality(pop)


##Mortality = function(pop, age){
##  mort = NULL #create column to flag for almost dead indv
 ## 
 ## for(r in 1:nrow(pop)){
 ##   if(nrow(age>3)){
 ##     mort = 1
 ##     else {
 ##       mort = 0
 ##     }
 #     
 # }
 # }
  

