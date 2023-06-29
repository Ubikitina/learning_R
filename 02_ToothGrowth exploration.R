# Importing the datasets
data("ToothGrowth")
View(ToothGrowth)


# Packages to be installed and loaded by using the console
# install.packages('dplyr')
# library(dplyr)

filtered_tg <- filter(ToothGrowth, dose==0.5) # filtering the data by dose
View(filtered_tg) # viewing the data filtered

arrange(filtered_tg,len) # sort by length

arrange(filter(ToothGrowth,dose==0.5),len) # nested function, includes all in one, filter and sorting

# Using a pipe for doing the same as before.
# Pipes help to have a better readability and changing easily the code
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>%
  arrange(len)

View(filtered_toothgrowth)

# Another pipe
filtered_toothgrowth2 <- ToothGrowth %>%
  filter(dose==0.5) %>%
  group_by(supp) %>%
  summarize(mean_len = mean(len,na.rm=T), .group="drop")

