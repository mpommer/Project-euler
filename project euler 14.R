# project euler 14
rm(list=ls())



max <- 0

for ( i in 1000000:800000){
  n <- i
count <- 0
while (n>1){
if (n%%2==0){
  n <- n/2
} else {
  n <- 3*n+1
}
 count <- count +1 
 }

if(count>max){
  max <- count
  number <- i
}
}


print(number)
