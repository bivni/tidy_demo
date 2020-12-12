library(markdown)
nb_file="r-simple-flowcontrol.ipynb"
# xfun::file_string(nb_file)
nb_rmd = rmarkdown:::convert_ipynb(nb_file)
print(nb_rmd)

