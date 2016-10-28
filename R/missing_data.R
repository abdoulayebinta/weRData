###########################################
# R Statistics
# Coding missing data
# @author: Abdoulaye Bah
##########################################

# NA = "Not Available"
# Makes certain calculations impossible
x1 <- c(1, 2, 3, NA, 5)
summary(x1)
mean(x1)


# To find missing values
which(is.na(x1))  # Give index number

# Ignore missing values with na.rm = T
mean(x1, na.rm = T)

############### MISSING VALUES #####################
# Replace missing values with 0 (or other number)
# Option 1: Using "is.na"
x2 <- x1
x2[is.na(x2)] <- 0
x2
# Option 2: Using "ifelse"
x3 <- ifelse(is.na(x1), 0, x1)
x3


################### MISSING DATA ###################
# For data frames, R has many packages to deal
# intelligently with missing data via imputation.
#
# mi: Missing Data Imputation and Model Checking
browseURL("http://cran.r-project.org/web/packages/mi/index.html") 
# mice: Multivariate Imputation by Chaines Equations
browseURL("http://cran.r-project.org/web/packages/mice/index.html")


# Clean up
rm(list = ls())


