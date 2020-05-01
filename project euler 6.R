# project euler question 6

sum1 <- 0
sum2 <- 0

for (i in 1:100){
  sum1 <- sum1 + i
}

sum1 <- sum1^2

for (i in 1:100){
  sum2 <- sum2 + i^2
}


dif <- sum1 -sum2

print(dif)
