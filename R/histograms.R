####################################################
# Creating histograms for quantitative variables
# @author: Abdoulaye Bah
#################################################

# LOAD DATASETS PACKAGE
require("datasets")
?lynx
# Annual Canadian Lynx trapping 1821 - 1934
data("lynx")

# Make a histogram using the defaults
hist(lynx)
?hist

# Modify histogram 
# Save histogran as object
h <- hist(lynx,
          breaks = 11,
          freq = FALSE,
          col = "blue",
          main = "Histogram of Anual Canadian Lynx Trapping\n1821-1934",
          xlab = "Number of Lynx Trapped")







