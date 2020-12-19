## side effect  and local and global variables

glob_cnt=0

print_cnt_wrong <- function(increment=1) {
  print(glob_cnt)
  glob_cnt<-glob_cnt+increment # local  
  print(glob_cnt)
} 

print_cnt_wrong()
print_cnt_wrong()
print_cnt_wrong(20)
print_cnt_wrong()

print_cnt <- function(increment=1) {
  glob_cnt <<- glob_cnt+increment # global assignment  
  print(glob_cnt)
} 
glob_cnt=0
print_cnt()
print_cnt()
print_cnt(20)
print_cnt()




## ... -- optional argumemts (передавать другой функции)

### Пример с фунцией базовой графики с с линейной линией тренда и доп параметрами
##  У фунцкии plot( x,y,... ) много доп. параметров
## см.  ?par   
## lwd -line width
## pch - point char см. ?points
## cex - char expasion (size)
## col
dev.off()
plot(cars$speed,cars$dist,col="dark green",pch=11,cex=5,lwd=3)
