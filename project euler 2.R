# project euler question 2

rm(list=ls())

v1 <- c(1,1)

for (i in 1:40){
 v1 <- append(v1,v1[i]+v1[i+1])
 if (v1[i+1]+v1[i+2]>4000000){
   break
 }
}


sum <- 0
for (i in 3:length(v1)){
  if(v1[i]%%2==0){
    sum <- sum + v1[i]
  }
}

print(sum)
