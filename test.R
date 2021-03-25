#install.packages("plumber")

library(plumber)



r <- plumb('mul.R')

r$run(port= 8080)



#curl --data "x=2&y=3" http://localhost:8080/mul