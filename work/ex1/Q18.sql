SELECT country.country_id AS country_id, country, count(customer.customer_id), sum(amount)
FROM country, city, address, customer, payment
WHERE country.country_id = city.country_id AND city.city_id = address.city_id AND address.address_id = customer.address_id AND payment.customer_id = customer.customer_id
GROUP BY country.country_id
ORDER BY country.country_id;