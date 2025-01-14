category.category_id AS category_id, name, count(payment_id), sum(amount), ave(DATE_PART(payment.payment_date, rental.return_date))
FROM payment, rental, inventory, film, film_category, category
WHERE payment.rental_id = rental.rental_id AND rental.inventory_id = inventory.inventory_id AND inventory.film_id = film.film_id AND film.film_id = film_category.film_id AND film_category.category_id = category.category_id
GROUP BY category.category_id
ORDER BY category_id 
;