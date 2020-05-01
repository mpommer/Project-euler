# project euler 12

rm(list=ls())

v1 <- c()
tnum <- 0

# vector with sequence of triangle numbers

for( i in 1:20000){
  tnum <- tnum +i
 v1 <-  append(v1, tnum, after = length(v1))
}



max <- 0
for (j in 10000:10050){
count = 0
for ( i in 1:v1[j]/2){
  if (v1[j]%%i==0 ){
    count <- count +1
  }
}
if (count>max){
  max <- count
}
}

v2 <- c(Divisors(100))



max <- 0
for (j in 10000:20000){
 count <- lengths(Divisors(v1[j]), use.names=T)
 if(count>=500){
   print(v1[j])
   break
 }
  
}



Divisors(200000)



test <- lengths(Divisors(100), use.names=T)

str(test)
test>7








