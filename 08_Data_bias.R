install.packages("SimDesign")
library(SimDesign)

# Entering temperature data
actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_tem <- c(67.9, 69, 71.5, 70, 67, 69)

# Calculate the bias between them
bias(actual_temp, predicted_tem)

# Entering sales data
actual_sales <- c(150, 203, 137, 247, 116, 287)
predicted_sales <- c(200, 300, 150, 250, 150, 300)

# Calculate bias between them
bias(actual_sales, predicted_sales)
