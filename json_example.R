library(tidyverse)
library(jsonlite)
library(lubridate)
json_contents <- jsonlite::read_json("weather_msk.json")

weathers_list <- json_contents$list
map_chr( weathers_list, "dt_txt")
map_chr( weathers_list, function (item)  item[["dt_txt"]])
map_chr( weathers_list, ~ .x[["dt_txt"]])

map_dbl( weathers_list, c("main","temp"))


prognoz_temp <- tibble(
  time = ymd_hms(map_chr( weathers_list, "dt_txt")),
  temp = map_dbl( weathers_list, c("main","temp"))
)

prognoz_temp
#
# ������ 
# �������� ������ wind_deg � wind_speed 
#
prognoz_temp <- tibble(
  time = ymd_hms(map_chr( weathers_list, "dt_txt")),
  temp = map_dbl( weathers_list, c("main","temp")),
  wind_deg = map_dbl( weathers_list,c("wind","deg") ),
  wind_speed = map_dbl( weathers_list,c("wind","speed") )

)

