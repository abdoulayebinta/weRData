##########################################################
# Using the describe() function to profile the food prices data
# @author: Abdoulaye Bah
# From Dave Henry's Training
##########################################################


# Load package
require("Hmisc")

?describe

foodprices_data <- read.table(unz("C:/Users/LENOVO/Desktop/dataAnalysis/weRData/data/foodprices.zip", "WFPVAM_FoodPrices_06-10-2016.csv"), header = T, quote = "\"", sep = ",", comment.char = '', stringsAsFactors = FALSE) 

View(foodprices_data)

food_pices_profile <- Hmisc::describe(foodprices_data)
?head
head(food_pices_profile)
# Clean up
rm(list = ls())

