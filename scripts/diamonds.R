#https://r4ds.had.co.nz/workflow-projects.html
#example code for this demo.

install.packages("tidyverse")
library(tidyverse)
install.packages("hexbin")
library("hexbin")
install.packages("knitr")
library(knitr)
install.packages("leaflet")
library("leaflet")

ggplot(diamonds, aes(carat, price)) +
  geom_hex()

ggsave("diamonds.pdf") #stores .pdf in root level project folder
#this isn't great because output files will all be put in root project directory

dir.create("outputs") #create a new folder to hold the output files

ggsave("outputs/diamonds2.pdf") #ggplot stores it in outputs folder

write.csv(diamonds, file = "outputs/diamonds.csv") #base R code to output text file

#we will need a couple other packages as we proceed.

