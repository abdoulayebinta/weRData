##############################################################
# Importing the foodprices CSV file from a .zip archive
#
# Goal: To create a simple R program to extract and load data from  the CSV file in the foodprices.zip archive into an R data frame
#############################################################

library(dplyr)

# Read the foodprices data into a data frame
foodprices_data <- read.table(unz("C:/Users/LENOVO/Desktop/dataAnalysis/weRData/data/foodprices.zip","WFPVAM_FoodPrices_06-10-2016.csv"), header = T, quote = "\"", sep = ",", comment.char = '', stringsAsFactors = FALSE)


# Use dplyr to filter the data frame
ng_sorghum <- filter(foodprices_data, adm0_name == "Nigeria", cm_name == "Sorghum")


# Get a subset of columns 
ng_sorghum <- ng_sorghum[,c("adm0_name","adm1_name","cm_name","mp_year","mp_month","mp_price")]


?head
# View the first 10 records
head(ng_sorghum, 10)


# Clean up
rm(list = ls())






