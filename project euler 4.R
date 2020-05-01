# project euler question 4 palyndromic number
rm(list=ls())



is_pal <- function(n){
  a <- n
  b <- as.numeric(paste(rev(strsplit(as.character(a),"")[[1]]),collapse="")) 
  if(a==b){
    return(1)
  } else{
    return(0)
  }
}

v1 <- c()

for( i in 101:(999*999)){
  if(is_pal(i)==1){
    v1 <- append(v1,i)
  }
}

max <- 0
for ( i in seq(length(v1),1, by= -1)){
  for(j in 100:999){
    if(v1[i]%%j==0){
      if(v1[i]/j<1000){
        max<-v1[i]
        
      }
    }
  }
  if(max!=0){
    break
  }
}
max


