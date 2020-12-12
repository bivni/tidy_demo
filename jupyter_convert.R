library(markdown)
nb_file="r-simple-flowcontrol.ipynb"
# xfun::file_string(nb_file)   # show content of file 
nb_rmd = rmarkdown:::convert_ipynb(nb_file)
print(nb_rmd)

