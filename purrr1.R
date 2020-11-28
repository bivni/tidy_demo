library(purrr)

(pop_list <- map(list1,get_pop) )
map_dbl(list1,get_pop)
map_chr(list1,get_pop)

list2 = list(
  city1=list(name='Moscow',stats=list(pop=12e9)),
  city2=list(name='Istanbul',stats=list(pop=16e9)))