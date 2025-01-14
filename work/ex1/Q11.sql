SELECT country_id, count(city)
FROM city
GROUP BY country_id
HAVING count(city)>19
;