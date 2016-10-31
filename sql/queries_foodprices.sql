# For which commodities do market prices records exist for Guinea
SELECT distinct adm0_name, cm_name 
FROM foodprices 
WHERE adm0_name LIKE 'Guinea'
ORDER BY cm_name

# 
