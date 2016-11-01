######################################
# Diamond pricing using ggplot2
#######################################

library(ggplot2)

View(diamonds)
summary(diamonds)

summary(diamonds$price)
aveSize <- round(mean(diamonds$carat),4)
?levels
clarity <- levels(diamonds$clarity)

qplot(price, carat, data = diamonds)

?opts

qplot(price, carat, data = diamonds, color = clarity,
      xlab = "Price", ylab = "Carat",
      main = "Diamond Pricing") + 
  theme(legend.background = element_rect(colour = "black"))
 

# Clean up
rm(list = ls())
  
