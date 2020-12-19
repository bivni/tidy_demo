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


## Символы точек (пример из документации ?points)
png("pch.png", height = 0.7, width = 7, res = 100, units = "in")
par(mar = rep(0,4))
plot(c(-1, 26), 0:1, type = "n", axes = FALSE)
text(0:25, 0.6, 0:25, cex = 0.5)
points(0:25, rep(0.3, 26), pch = 0:25, bg = "grey")
pchShow <-
  function(extras = c("*",".", "o","O","0","+","-","|","%","#"),
           cex = 3, ## good for both .Device=="postscript" and "x11"
           col = "red3", bg = "gold", coltext = "brown", cextext = 1.2,
           main = paste("plot symbols :  points (...  pch = *, cex =",
                        cex,")"))
  {
    nex <- length(extras)
    np  <- 26 + nex
    ipch <- 0:(np-1)
    k <- floor(sqrt(np))
    dd <- c(-1,1)/2
    rx <- dd + range(ix <- ipch %/% k)
    ry <- dd + range(iy <- 3 + (k-1)- ipch %% k)
    pch <- as.list(ipch) # list with integers & strings
    if(nex > 0) pch[26+ 1:nex] <- as.list(extras)
    plot(rx, ry, type = "n", axes  =  FALSE, xlab = "", ylab = "", main = main)
    abline(v = ix, h = iy, col = "lightgray", lty = "dotted")
    for(i in 1:np) {
      pc <- pch[[i]]
      ## 'col' symbols with a 'bg'-colored interior (where available) :
      points(ix[i], iy[i], pch = pc, col = col, bg = bg, cex = cex)
      if(cextext > 0)
        text(ix[i] - 0.3, iy[i], pc, col = coltext, cex = cextext)
    }
  }
pchShow()
pchShow(c("o","O","0"), cex = 2.5)
pchShow(NULL, cex = 4, cextext = 0, main = NULL)

## ... -- optional argumemts (передавать другой функции)

### Пример с фунцией базовой графики с с линейной линией тренда и доп параметрами
##  У фунцкии plot( x,y,... ) много доп. параметров
## см.  ?par   
## lwd -line width
## pch - point char см. ?points
## cex - char expasion (size)
## col



