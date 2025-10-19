-- a. Wyznacz całkowitą długość dróg w analizowanym mieście

SELECT 
	SUM(ST_LENGTH(r.geometry))
FROM roads r