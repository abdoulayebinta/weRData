####################################
# Import data: CSV files
# @author: Abdoulaye Bah
# Training on R
####################################


# CSV files
# Don't have to specify delimiters for missing data
# because CSV means "comma separated values"
trends.csv <- read.csv("C:/Users/LENOVO/Desktop/dataAnalysis/weRData/data/GoogleTrends.csv", header = TRUE)

str(trends.csv)
View(trends.csv)


# clean up
rm(list = ls())





