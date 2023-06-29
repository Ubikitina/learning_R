install.packages("palmerpenguins")
library(palmerpenguins)
summary(penguins)
View(penguins)
install.packages("ggplot2")
library(ggplot2)
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+geom_point(aes(color=species))


# Print
print("Coding in R")


# Variables
first_variable <- "This is my variable"
second_variable <- 12.5
vec_1 <- c(13, 48.5, 71, 101.5, 2)

# Vectores
typeof(c(1L, 3L))
length(vec_1)

# List: similar to vector, but it can contain different data types
list("a", 1L, 1.5, TRUE)
list(list(list(1 , 3, 5))) # las listas pueden contener otras listas

# Matrix
matrix(c(3:8), nrow = 2) # create a matrix by setting the rows
matrix(c(3:8), ncol = 2) # create a matrix by setting the columns



# Date and time
install.packages("tidyverse")
library(tidyverse)
library(lubridate)

today() # returns "2023-06-27"
now() # returns "2023-06-27 09:49:00 UTC"

ymd("2021-01-20")
mdy("January 20th, 2021")
dmy("20-Jan-2021")
ymd(20210120)
ymd_hms("2021-01-20 20:11:59")
mdy_hm("01/20/2021 08:01")
as_date(now()) # convert date-time to date


# Dataframes: marco de datos es un conjunto de columnas que contienen datos, que es similar a una hoja de cálculo o una tabla SQL. 
data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))

# Archivos
file.create ("new_text_file.txt") # create file
dir.create ("destination_folder") # create folder
file.copy ("new_text_file.txt" , "destination_folder") # copy
unlink ("new_text_file.txt") # delete file
unlink ("destination_folder/new_text_file.txt") # delete file

# Operations
quarter_1_sales <- 35657.95
quarter_2_sales <- 43810.55
midyear_sales <- quarter_1_sales + quarter_2_sales # sum
yearend_sales <- midyear_sales*2 # multiply
TRUE & TRUE # logic and
x < 5
x > 3 & x < 12 # comparison and logic and
!TRUE # not

# Conditional
if (x > 0) {
  
  print("x is a positive number")
  
} else {
  print("x is a negative number")
}

# Tidyverse
install.packages("tidyverse") # install the package
library("tidyverse") # load the package
tidyverse_update() # update the package
