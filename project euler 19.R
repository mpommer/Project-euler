# project euler 19

rm(list=ls())


month1 <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
month2 <- c(31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)




is_leap <- function(x){
  if (x %% 4 == 0 && x %% 100 != 0){
    return(1)
  } else if (x %% 4 == 0 && x %% 100 == 0 && x %% 400 == 0){
    return(1)
  } else {
    return(0)
  }
}

# check for 01.01.1901
is_leap(1900)
1 + 4*30 + 28+ 7*31
366 %% 7
# 31.12.1900 was a tuesday, so 01.01.1901 was a wednesday

count <- 3
test <- 0


  for(year in 1901:2000){
  if (is_leap(year)==0){
  for (i in 1:12){
  count <- count + month1[i]
  if(count %% 7 ==0){
    test <- test +1
  }
}
  } else {
    for (i in 1:12){
    count <- count + month2[i]
    if(count %% 7 ==0){
      test <- test +1
    }
  }
  
}
}














