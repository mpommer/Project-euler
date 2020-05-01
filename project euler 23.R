# project euler 23

rm(list=ls())

# list of abundant numbers


v1 <- c()

for(j in 3:28123){
  count <- 0
  for(i in 2:j-1){
    if(j %% i == 0){
      count <- count + i
      
    }
    
  }
  if(count>j)
  v1 <- append(v1, j)
}


v2 <- c(1:28123)

for(i in 1:6965){
  for(j in i:6965){

   if( v1[i]+v1[j]<=28123){
    v2[v1[i]+v1[j]] <- 0
   } else {
     break
   }
  }
}


sum(v2)









