#RunModel.R

RunModel = function(replicates, r, directory){
  maxage      = replicates$maxage[r]
  timeperiod  = replicates$timeperiod[r]
  broodsize   = replicates$broodsize[r]
  k           = replicates$k[r]
  sexratio    = replicates$sexratio[r]
  maturity    = replicates$maturity[r]
  
  #initialize pop
  ###initialize population <----- for mosquitoes we will have to think carefully about how to do this without 
  ###simulating every individual right away. I made this mistake before and crashed a cluster node!
  pop = matrix(nrow=k, ncol=5)            #each individual gets its own row.. matrix > dataframe
  colnames(pop) <- c("id", "mom", "dad", "age", "sex") #just to give me a better understanding of what these variables are/set names
  pop[,1] = seq(1,100,1)                    #each individual has unique ID name; sequence starting at 1, through 100, with each 1 interation
  pop[,2:3] = 0                            #at this point, we are putting all equal to zero because this is the initial generation and we dont know parents
  #pop[,2] = rep(0,k)                      #mom id - later will not be 0, this is useful for debugging #saying replicate 0 100 times
  #pop[,3] = rep(0,k)                      #dad id - later will not be 0, this is useful for debugging
  pop[,4] = sample(seq(0,maxage,1),k,replace=T)-1   #set age between 0 and 4 and subtract 1 because we add one at the first generation
  pop[,5] = sample(c(0,1),100,replace=T)    #each individual assigned male (1) or female (0) #sample from zero 100 times, with replacements. aka set sex
  #...you can add other columns for other species-specific characteristics you want to track
  
  #create for loop
  for(y in 1:timeperiod){
    AgeUp(pop)
    Mortality(pop)
    #dead = sample(seq(1,nrow(pop),1),1,replace=F) #take a sample of the sequence 1-all the rows in matrix "pop", take out 1 individual and do not replace it
    #pop = pop[-dead,] #now re-create "pop" with this change
    }
  write.table(pop, paste(directory, "/output/testpop.txt", sep=""), sep="/t", col.names=F, row.names=F)
}


