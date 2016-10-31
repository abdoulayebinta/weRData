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

