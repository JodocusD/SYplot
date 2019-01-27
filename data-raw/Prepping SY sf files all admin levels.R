# prepping ocha data files from sp to sf

library(tidyverse)
library(sf)

SY_adm1 <- read_rds("~/Documents/RPBS/PBS/SYR/SYR_data/SY/SYR_adm1.rds")
SY_adm1sf <- st_as_sf(SYR_adm1) %>% mutate(ID_1 = as.factor(ID_1)) %>%
  mutate(
    lon = map_dbl(geometry, ~st_centroid(.x)[[1]]),
    lat = map_dbl(geometry, ~st_centroid(.x)[[2]])
  )
