# Creating bar charts of group means

# Load data
?InsectSprays
spray <- InsectSprays # Load data with shorter name
View(spray)

# To plot means, first get the means for the groups
means <- aggregate(spray$count ~ spray$spray, FUN = mean)
View(means)
means

plot(means)



# Clean
rm(list = ls())
