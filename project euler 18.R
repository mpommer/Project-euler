# problem 18

rm(list=ls())


v1 <- c("75 
95 64 
17 47 82 
18 35 87 10 
20 04 82 47 65 
19 01 23 75 03 34 
88 02 77 73 07 63 67 
99 65 04 28 06 16 70 92 
41 41 26 56 83 40 80 70 33 
41 48 72 33 47 32 37 16 94 29 
53 71 44 65 25 43 91 52 97 51 14 
70 11 33 28 77 73 17 78 39 68 17 57 
91 71 52 38 17 14 91 43 58 50 27 29 48 
63 66 04 68 89 53 67 30 73 16 69 87 40 31 
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23")


v2 <- as.numeric(strsplit(v1," ")[[1]])



#$`1`
c <- c(75)

#$`2`
c1 <- c(95, 64)

#$`3`
v3<- c(17, 47, 82)

#$`4`
v4 <- c(18, 35, 87, 10)

#$`5`
v5 <- c(20,  4, 82, 47, 65)

#$`6`
v6 <- c(19,  1, 23, 75,  3, 34)

#$`7`
v7 <- c(88,  2, 77, 73,  7, 63, 67)

#$`8`
v8 <- c(99, 65,  4, 28,  6, 16, 70, 92)

#$`9`
v9 <- c(41, 41, 26, 56, 83, 40, 80, 70, 33)

#$`10`
v10 <- c(41, 48, 72, 33, 47, 32, 37, 16, 94, 29)

#$`11`
v11 <- c(53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14)

#$`12`
v12 <- c(70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57)

#$`13`
v13 <- c(91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48)

#$`14`
v14 <- c(63, 66,  4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31)

#$`15`
v15 <- c(4, 62, 98, 27, 23,  9, 70, 98, 73, 93, 38, 53, 60,  4, 23)


df <- rbind.data.frame(c,c1,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15)


matrix <- data.matrix(df, rownames.force = F)



df[upper.tri(df)] <- 0





for(i in 14:1){
  for(j in 1:i){
    df[i,j]<-df[i,j]+max(df[i+1,j], df[i+1,j+1])
  }
}






