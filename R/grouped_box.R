# Creating grouped boxplots

# Load data
# Use dataset "painters" from the package "MASS"
require(MASS)
?painters

data("painters")
painters
View(painters)

# Draw boxplots of outcone (Expression) by group (School)
# Basic version
boxplot(painters$Expression ~ painters$School)

# Modified version 
require("RColorBrewer") 
boxplot(painters$Expression ~ painters$School,
        col = brewer.pal(8, "Pastel2"),
        names = c("Renais.",
                  "Mannerist",
                  "Seicento",
                  "Venetian",
                  "Lombard",
                  "16th C.",
                  "17th C.",
                  "French"),
        boxwex = 0.5,
        whisklty = 1, 
        staplelty = 0,
        outpch = 16, # Outlier symbol, 16 = filled circle
        outcol = brewer.pal(8, "Pastel2"),
        main = "Expression ratings of Painters by School\nFrom \"painters\" Dataset in \"MASS\" Package",
        xlab = "Painter's School",
        ylab = "Expression Ratings")

# Clean up
detach("package:MASS", unload = TRUE)
detach("package:RColorBrewer", unload = TRUE)
rm(list = ls())
