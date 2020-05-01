# project euler 24

rm(list=ls())

mil_num <- 1000000
indices <- c()
for(i in 9:0){
  index <- 0
  while(factorial(i)<mil_num){
    mil_num <- mil_num-factorial(i)
    index <- index+1
  }
indices <- append(indices,index)
}




input <- 0:9
output <- c()

for(j in 1:10){
  output[j] <- input[indices[j]+1]


input <- input[-(indices[j]+1)]

}
output



