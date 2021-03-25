library(rpart)

set.seed(200)

df <- data.frame(label = sample(c('A', 'B') , 100, replace = TRUE )
                 var1 = sample(100,100), var2 = sample()
                 )