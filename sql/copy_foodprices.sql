COPY foodprices 
FROM 'C:/Users/LENOVO/Desktop/dataAnalysis/weRData/data/WFPVAM_FoodPrices_06-10-2016.csv'
DELIMITER ',' CSV HEADER;

SELECT COUNT(*) FROM foodprices;
