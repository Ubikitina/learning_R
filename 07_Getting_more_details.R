# Getting more detail of the data

install.packages('Tmisc')
library(Tmisc)
data("quartet")
View(quartet)

# Get a summary of the statistical mesasures of the data by grouping our data by set and then get a summary
quartet %>%
  group_by(set) %>%
    summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y))

# Plot our data: we see in the result that even if the statistical outcome is quite similar, the charts look very different
ggplot(quartet, aes(x,y)) + geom_point() + geom_smooth(method=lm, se=FALSE) + facet_wrap(~set)

# datasauRus package
install.packages('datasauRus')
library('datasauRus')

# Creating a chart using datasauRus package
ggplot(datasaurus_dozen, aes(x=x, y=y, colour=dataset)) + geom_point() + theme_void() + theme(legend.position = "none") + facet_wrap(~dataset)
