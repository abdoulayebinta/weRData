# install the dplyr library 
install.packages("dplyr")

# Load the dplyr library
library(dplyr)

# Read the foodprices data into a data frame
foodprices_data <- read.table(unz("C:/Users/LENOVO/Desktop/dataAnalysis/weRData/data/foodprices.zip", "WFPVAM_FoodPrices_06-10-2016.csv"), header = T, quote = "\"", sep = ",", comment.char = '', stringsAsFactors = FALSE)

# use dplyr to filter the data frame
?filter
gn_sugar <- filter(foodprices_data,adm0_name == "Guinea", cm_name == "Sugar")
View(gn_sugar)

# Get a subset of columns
gn_sugar <- gn_sugar[,c("adm0_name","adm1_name","cm_name","mp_year","mp_month","mp_price")]
View(gn_sugar)

# View the first 10 records
head(gn_sugar,10)














