# project euler qzestion 9
rm(list=ls())


num <- 0

for (i in 1:1000){
  for (j in 1:i){
    num <- sqrt(i^2+j^2) + i +j
    if(num==1000){
      break
  }
  }
  if(num==1000){
    break
  }
}

a <- i
b <- j
c <- sqrt(i^2+j^2)

product <- a*b*c

print(product)
