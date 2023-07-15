
# Install the necessary packages
install.packages("ggplot2") # package for plots
install.packages("palmerpenguins") # data package

# Load packages
library(ggplot2)
library(palmerpenguins)

# View the loaded data
data(penguins)
View(penguins)

# Create plot
# ggplot(data=penguins) : means that we will create a plot by using the penguins data
# + : this symbol means we will add a new layer to the plot
# geom_point() : select the geometrical figure by adding the geometrical function. geom_point means that a scatter plot of points will be used
# mapping = aes(x=flipper_length_mm, y = body_mass_g) : this is the mapping argument. Each geometrical function needs a mapping argument to define how the variables will be applied
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g))

# Same plot as before by using other syntax
ggplot(data=penguins, mapping = aes(x=flipper_length_mm, y = body_mass_g)) + geom_point()

# New plot to highlight the different penguins species. This plot uses different colors
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color=species))

# Same as before but using different shapes
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, shape=species))

# Both color and shape
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, shape=species, color=species))

# Also using different sizes
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, shape=species, color = species, size=species))

# Different transparencies
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, alpha=species))

# Change color of all the plot, without regards of a specific variable
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g), color="purple")

# Using different geoms
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g)) # scatter point
ggplot(data=penguins) + geom_smooth(mapping = aes(x=flipper_length_mm, y = body_mass_g)) # line with shadow (smooth line)

# Two geoms combined: smooth and point
ggplot(data=penguins) + 
  geom_smooth(mapping = aes(x=flipper_length_mm, y = body_mass_g)) +
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g))

# One line per species
ggplot(data=penguins) + geom_smooth(mapping = aes(x=flipper_length_mm, y = body_mass_g, linetype=species))

# Jittering
ggplot(data=penguins) + geom_jitter(mapping = aes(x=flipper_length_mm, y = body_mass_g))




# We will now use the diamonds dataset
# Show the count of each cut in a bar diagram
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut))

# Adding some color
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, color=cut))

# Filling in with color (better than the previous one)
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, fill=cut))

# Highlighting different variables in the plot by using colors
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, fill=clarity))


# Using facets to divide the plot by species in the penguin dataset
ggplot(data=penguins, aes(x=flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color=species)) + 
  facet_wrap(~species)

# Using facets to divide the plot by cut in the diamond dataset
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=color, fill=cut)) +
  facet_wrap(~cut)

# Using facets to divide the plot by species and sex in the penguin dataset
ggplot(data=penguins, aes(x=flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color=species)) + 
  facet_wrap(sex~species)



# Adding annotations, such as title, subtitle and caption
ggplot(data=penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color = species))+
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of three penguin species",
       caption = "Data collected by Dr. Kristen Gorman")

# Adding annotations anywhere in the image
ggplot(data=penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color = species))+
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of three penguin species",
       caption = "Data collected by Dr. Kristen Gorman") +
  annotate("text", x=200, y=3500, label="The Gentoos are the largest", color="purple", fontface="bold", size=4.5, angle=25)

# Refactoring the code above for a good look and feel
p <- ggplot(data=penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y = body_mass_g, color = species))+
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of three penguin species",
       caption = "Data collected by Dr. Kristen Gorman")

p+annotate("text", x=210, y=3600, label="The Gentoos are the largest", color="blue", fontface="bold", size=4.5, angle=25)


# Saving the plots by using ggsave
ggsave("Three Penguin Species.png")


# Saving plots by using png
png(file = "exampleplot.png", bg = "transparent")
plot(1:10)
rect(1, 5, 3, 7, col = "white")
dev.off()

# Saving plots by using pdf
pdf(file = "/Users/username/Desktop/example.pdf",    
    width = 4,     
    height = 4) 
plot(x = 1:10,     
     y = 1:10)
abline(v = 0)
text(x = 0, y = 1, labels = "Random text")
dev.off()