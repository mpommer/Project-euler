# project euler question 5

for (i in seq(40,300000000, by = 20)){
  for (j in seq(19,11, by =-1)){
    if (i%%j!=0){
      break
    }
  }
  
  if (j==10){
    print(i)
    break
  }
}



