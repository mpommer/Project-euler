# project euler 21

rm(list=ls())


v1 <- c(0, 1)

for(j in 3:10000){
  count <- 0
for(i in 2:j-1){
  if(j %% i == 0){
    count <- count + i

  }

}

v1 <- append(v1, count)
}


v2 <- c()

for(i in 2:10000){
if(v1[i]>10000){
  
} else if (v1[v1[i]]==i && v1[i]!=i){
      v2 <- append(v2, i)
      
} else {
  
}
}
  

sum(v2)




