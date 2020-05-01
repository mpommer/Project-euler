# project euler 3

rm(list=ls())


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




# d) Primfaktorzerlegung

i=2
m=1
vec <- vector()
n_number=600851475143
while (i<sqrt(n_number)){
  if (is_prime(i)){
    if(n_number%%i==0){
      vec[m]= i
      m = m+1
      n_number = n_number/i
      i=i-1
    }
  }
  if(is_prime(n_number)){
    vec[m]= n_number
    break
  }
  i=i+1 
}
vec  



# alternativer Weg

# sieb des Eratosthenes, vector mit Primzahlen
# Vector mit 1000000 Zahlen

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





prime_factor <- function(n){
v <- prime_numbers(1000000)
v1 <- c()

for(i in 1:length(v)){
  if(n%%v[i]==0){
    v1 <- append(v1, v[i])
    i <- i-1
  }
}
max(v1)

return(max(v1))
}

prime_factor(n)
