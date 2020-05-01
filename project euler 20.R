# project euler 20

rm(list=ls())



# faculty


num <- 1
fac <- function(x){
 
  for(i in x:1){
    num <- num* i
  }
  return(num)
}

library(gmp)
y <- factorialZ(100)
y


v1 <- c("93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000")


v2 <- as.numeric(strsplit(v1,"")[[1]])


sum(v2)


