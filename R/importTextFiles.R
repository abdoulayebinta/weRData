################################################
# Importing data
# @author: Abdoulaye Bah
# Training on R
################################################


# TEXT FILES
# Load a sreadsheet that has been saved as tab-delimited text file

# This works with missing data by specifying the separator: # \t is for tabs, 
# sep = "," for commas
# R converts missing to "NA"

# "header = TRUE" means the first line is a header

trends.txt <- read.table("C:/Users/LENOVO/Desktop/dataAnalysis/weRData/data/GoogleTrends.txt", header = TRUE, sep = "\t") 

# This gives structure of an object 
 str(trends.txt)
 
 # Viewing the object
 View(trends.txt)
 