
# Packages needed for data cleaning
install.packages("here")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")
install.packages("dplyr")
library("dplyr")

# Upload of a dataset
install.packages("palmerpenguins")
library("palmerpenguins")

# Get a summary of the dataset
skim_without_charts(penguins)

# Get a quick idea of the dataset
glimpse(penguins)

# Get a preview of the column names
head(penguins)

# Select only the species column
penguins %>%
  select(species)

# Select every column but species
penguins %>%
  select(-species)

# Change column name
penguins %>%
  rename(island_new = island)

# Make all the column names to uppercase
rename_with(penguins, toupper)

# To lower case
rename_with(penguins, tolower)

# This ensures there's only characters, numbers and underscores in the names
clean_names(penguins)

# Load package
library(tidyverse)

# Sort our data by bill length in ascending order
penguins %>% arrange(bill_length_mm)

# Sort our data by bill length in descending order
penguins %>% arrange(-bill_length_mm)

# The results above are just shown in the console. To save them, we need to create a data frame
penguins2 <- penguins %>% arrange(-bill_length_mm)
view(penguins2) # open the result file

# Using piping to get a summary of the results
# Getting a summary of the table 1: We will create a list of islands with the mean bill length. Take into account the drop_na, it is deleting the NA values rows. This could sometimes be useful, and other times bothering
penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))

# Getting a summary of the table 2: Same as before but using max instead of mean
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))

# Getting a summary of the table 3:
penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))

# Filtering data
penguins %>% filter(species == "Adelie")

# Mutate a column to show the weight in kilograms rather than grams and also flipper length in metters rather than millimetters
penguins %>%
  mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)
