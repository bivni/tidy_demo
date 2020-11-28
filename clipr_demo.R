library(clipr)
library(datapasta)

# install packages clipr and datapasta
# see Addins button

# tribble_paste() tribble - transposed tibble
tab1 <- tibble::tribble(
    ~продукт,       ~цена,
  "продукт1",        1000,
  "продукт2",        1000,
  "продукт3",        3000,
  "продукт4", 3666.666667,
  "продукт5", 4666.666667,
  "продукт6", 5666.666667,
  "продукт7", 6666.666667,
  "продукт8", 7666.666667
  )
# select vaiable name tab1 and click addins/value to clipboard 
tab1


df1=data.frame(
  stringsAsFactors = FALSE,
           продукт = c("продукт1","продукт2",
                       "продукт3","продукт4","продукт5","продукт6","продукт7",
                       "продукт8"),
              цена = c(1000,1000,3000,3666.666667,
                       4666.666667,5666.666667,6666.666667,7666.666667)
)