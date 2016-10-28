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

?t
# To get a barplot, need to extract means and reorganize 
# Removes first columns, transposes second
mean.data <- t(means[-1])
colnames(mean.data) <- means[,1]

# Basic barplot for means
barplot(mean.data)

# Modified barplot
barplot(mean.data,
        col = "lightblue",
        main = "Effectiveness of Insect Sparys",
        xlab = "Spray Used",
        ylab = "Insect Count")
# Clean
rm(list = ls())
