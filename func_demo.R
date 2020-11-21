last_item <-  function (collection) {
               col_len <- length(collection)
               collection[col_len]
}    


# last_item(LETTERS)               
# last_item(mtcars)               

matr1 = matrix(
  c(
    11,12,13,
    21,22,23
  ),byrow = T, nrow = 2
)

apply(matr1, MARGIN =1,FUN=last_item)
apply(matr1, MARGIN =2,FUN=last_item)

apply(matr1, MARGIN =2,FUN=max)


list1 = list(
  city1=list(name='Moscow',pop=12e9),
  city2=list(name='Istanbul',pop=16e9))

get_pop <- function ( litem) { litem [["pop"]] }

lapply(list1, get_pop)

sapply(list1, get_pop)

library(purrr)

map(list1,get_pop)
map_dbl(list1,get_pop)
