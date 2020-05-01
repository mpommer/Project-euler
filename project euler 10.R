# project euler question 10

rm(list=ls())


prime_numbers <- function(n){
  v <- c(1:n)
  v[1] <- 0
  
  for(i in 2:sqrt(n)){
    if(v[i]!=0){
      v[c(seq(2*i,n,by <- i))] <- 0
    }
  } 
  
  
  v <- v[!v==0]
  
  return(v)
}

# primes below 2000000
v <- prime_numbers(2000000)
print(sum(v))


