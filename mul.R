#* Get the prod of 2 numbers
#* @post /mul
function(x, y ){
  as.numeric(x) *as.numeric(y)
}

#* @serializer png
#* @get /plot
function(){
  barplot(1:10, col = 'red')
}
