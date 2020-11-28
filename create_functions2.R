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
