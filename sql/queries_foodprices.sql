# For which commodities do market prices records exist for Guinea
SELECT distinct adm0_name, cm_name 
FROM foodprices 
WHERE adm0_name LIKE 'Guinea'
ORDER BY cm_name

# What was the average price of Sorghum for all countries in 2014?
select avg(mp_price)
from foodprices
where cm_name LIKE 'Sorghum'
and mp_year = 2014

# What was the average price of Sorghum for each country in 2014?
select adm0_name, avg(mp_price)
from foodprices
where cm_name LIKE 'Sorghum'
and mp_year = 2014
group by adm0_name
order by adm0_name

# Which three countries had the lowest average price for Fuel (diesel) in 2013?
SELECT adm0_name, adm1_name, cm_name, avg(foodprices.mp_price) 
FROM foodprices WHERE 
cm_name LIKE 'Fuel (diesel)' AND mp_year = 2013 
GROUP BY adm0_name, adm1_name, cm_name, foodprices.mp_price 
ORder BY avg(foodprices.mp_price) limit 3

# What was the average price of Rics(imported) in Guinea, Liberia & Nigeria 
# for the years 2010, 2012 and 2014?
SELECT foodprices.adm0_name, foodprices.cm_name, AVG(mp_price) 
FROM foodprices 
WHERE cm_name LIKE 'Rice (imported)'
AND ((adm0_name LIKE 'Guinea') OR (adm0_name LIKE 'Liberia') OR (adm0_name LIKE 'Nigeria'))
AND mp_year IN (2010, 2012, 2014)
GROUP BY foodprices.adm0_name, foodprices.cm_name
ORDER BY foodprices.adm0_name






