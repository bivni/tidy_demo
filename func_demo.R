print( {i=123; i <- i+20; i})

last_item <-  function (collection) {
               col_len <- length(collection)
               collection[col_len]
}    



last_item(LETTERS)               
last_item(mtcars)               

matr1 = matrix(
  c(
    11,12,13,
    21,22,23
  ),byrow = T, nrow = 2
)

apply(matr1, MARGIN =1,FUN=last_item)
apply(matr1, MARGIN =2,FUN=last_item)

apply(matr1, MARGIN =1,FUN=max)
apply(matr1, MARGIN =2,FUN=max)

apply(matr1, MARGIN =1,FUN=sum)
apply(matr1, MARGIN =2,FUN=sum)

apply(matr1, MARGIN =2,FUN=
        function (row ) length(row) )
apply(matr1, MARGIN =1,FUN=
        function (row ) length(row) )

list1 = list(
  city1=list(name='Moscow',pop=12e9),
  city2=list(name='Istanbul',pop=16e9))

list1[ c(1,2) ]
list1[ 1 ]
list1[[ 2 ]] 

list1[[ 2 ]] [[1]]


list1[[ "city2" ]] [["name"]]
list1$city2
list1$city2$pop

get_pop <- function ( litem) { litem [["pop"]] }
lapply(list1, get_pop)
sapply(list1, get_pop)
v1 <- sapply(list1, get_pop)
str(v1)

get_city_par <- function ( litem, par) { litem [[par]] }
lapply(list1, get_city_par, "name")
lapply(list1, get_city_par, "pop")

pop_vec <-  sapply(list1, get_pop)
pop_vec




