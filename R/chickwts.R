# Creating bar charts for categorical variables



# LOAD dataset package
require("datasets")

?chickwts

# Look at data
chickwts


# Load data into workspace
data("chickwts")

# Quickiest method
plot(chickwts$feed) # Plot feed form chickwts

feeds <- table(chickwts$feed)
feeds
barplot(feeds)
?barplot

# Put the bars in descending order:
barplot(feeds[order(feeds, decreasing = TRUE)])

# Customize the plot
?par

# Customize the chart
# Sets outside margins: b, l, t, r

# Sets plot margins
par(oma = c(1, 1, 1, 1))

# Sets plot margins
par(mar = c(4,5,2,1))

barplot(feeds[order(feeds)], 
        horiz  = TRUE,
        las    = 1,  # las gives orientation of axis labels
        col    = c("beige", "blanchedalmond", "bisque1", "bisque2", "bisque3", "bisque4"),
        border = NA,  # No borders on bars
        main   = "Frequencies of Different Feeds\nin chickwts Dataset",  # \n = line break
        xlab   = "Number of Chicks")

rm(list = ls())
