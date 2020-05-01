# project euler question 7
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

primes <- prime_numbers(1000000) 

primes[10001]





# alternative way


is_prime <- function(n){
  prime =1
  for(i in 2:sqrt(n)){
    if (n%%i==0){
      prime = 0
    }
  }
  if(n==2){
    prime=1
  }
  
  return(prime)
}


# b)

i=3
n_prime=2
while (n_prime<=10001){
  if (is_prime(i)){
    n_prime = n_prime + 1
  }
  i = i+2
}

i=i-2
print(i)

