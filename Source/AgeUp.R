#AgeUp

AgeUp = function(pop, age){
  
  if(!is.null(nrow(pop))){
    pop[,4] = pop[,4] + 1
    return(pop)
  }
}

#testing
## AgeUp(pop)

