#Age-related death

Mortality = function(pop, maxage){
  pop = pop[-which(pop[,4] > maxage),]
  return(pop)
}

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
  

