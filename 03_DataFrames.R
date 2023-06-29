install.packages("tidyverse")
library(ggplot2)
data("diamonds")
View(diamonds)

# Preview of the dataset
head(diamonds)

# Highlight the structure of the data frame
str(diamonds)

# Column names only
colnames(diamonds)


# Create a new column
library(tidyverse)
mutate(diamonds, carat_2=carat*100)
