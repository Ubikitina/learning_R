# Step 1 - Loading Packages
install.packages("tidyverse")
library(tidyverse)

# Step 2 - Importing data
bookings_df <- read_csv("hotels_bookings.csv")

# Step 3 - Inspect and clean data
head(bookings_df) # preview columns and first lines
str(bookings_df) # column information
colnames(bookings_df) # column names

# create a new data frame
new_df <- select(bookings_df, `adr`, adults) 
head(new_df) # preview of the new df created

# create a new variable in my df
mutate(new_df, total = `adr` / adults)

