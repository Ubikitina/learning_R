# Transformation and cleaning

# Creating the data set by using a data frame
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")


# Here is where the data frame is created
employee <- data.frame(id, name, job_title)

# View content of our data frame
print(employee)

# Separate data in two columns
employee2 <- separate(employee, name, into=c('first_name', 'last_name'), sep=' ')
print(employee2)

# Unite the data in a new column
unite(employee2, 'name', first_name, last_name, sep=' ')
