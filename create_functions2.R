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

my_scatter_plot <- function(x,y,char_color="magenta") {
  plot(x,y,col=char_color,pch='*',lwd=1.5,cex=2)
}

my_scatter_plot(cars$speed,cars$dist)
my_scatter_plot(cars$speed,cars$dist,char_color = "dark grey")

## ... -- optional argumemts (передавать другой функции)

### Пример с фунцией базовой графики с с линейной линией тренда и доп параметрами
##  У фунцкии plot( x,y,... ) много доп. параметров
## см.  ?par   
## lwd -line width
## pch - point char см. ?points
## cex - char expasion (size)
## col - color
plot(cars$speed,cars$dist,col="dark green",pch=25,cex=3,lwd=3)
abline(lm(dist~speed,data = cars), col="red",lwd=3,lty=8)

my_plot_with_lm <- function(formula,df,...) {
  plot(formula,data=df,...)
  abline(lm(formula,data=df ), col="red",lwd=3,lty=8)
}
my_plot_with_lm(formula=dist~speed, df=cars)
plot.new()
my_plot_with_lm(formula=dist~speed, df=cars,col="tan2",lwd=2,main="тормозной путь от скорости")  
