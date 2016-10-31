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

# 






