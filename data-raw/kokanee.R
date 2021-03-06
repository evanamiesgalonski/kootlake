library(dplyr)
library(magrittr)
library(readr)
library(devtools)

rm(list = ls())

kokanee <- read_csv("data-raw/kokanee.csv")
kokanee %<>% arrange(Year) %>% select(Year, Lardeau, MeadowCreek, Fecundity, LengthMale = ForkLengthMale, LengthFemale = ForkLengthFemale)
devtools::use_data(kokanee, overwrite = TRUE)
