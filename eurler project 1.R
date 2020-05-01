# Project euler question 1

rm(list=ls())


v1 <- c()


for (i in seq(3, 1000, by=3)){
  v1 <- append(v1, i, after = length(v1))
}

for (i in seq(5, 1000, by=5)){
  if(i%%3!=0){
  v1 <- append(v1, i, after = length(v1))
  }
}

sum(v1)
# 234168
