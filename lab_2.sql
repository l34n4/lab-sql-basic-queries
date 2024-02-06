	#Display all available tables in the Sakila database.
USE sakila;
SHOW TABLES;

	#Retrieve all the data from the tables `actor`, `film` and `customer`.
USE sakila;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

	# 3 Retrieve the following columns from their respective tables:
    
#3.1 Titles of all films from the `film` table
USE sakila;
SELECT * FROM film; 
	#Look at it 

SELECT title FROM sakila.film;


#3.2 List of languages used in films, with the column aliased as `language` from the `language` table

USE sakila;
SELECT * FROM language; 
	#look at it 

SELECT name AS language
FROM language;

#3.3 List of first names of all employees from the `staff` table
SELECT * FROM sakila.staff;
	#looking

SELECT first_name FROM sakila.staff;

	# 4 Retrieve unique release years.

SELECT * FROM sakila.film;
SELECT DISTINCT release_year FROM sakila.film;
	
    # 5 Counting records for database insights:
#5.1 Determine the number of stores that the company has.

SELECT * FROM sakila.store;
SELECT COUNT(DISTINCT store_id) AS num_stores
FROM store;

#5.2 Determine the number of employees that the company has.
SELECT * FROM sakila.staff;
SELECT COUNT(DISTINCT staff_id) AS num_staff
FROM staff;

#5.3 Determine how many films are available for rent and how many have been rented.
USE sakila;
SELECT * FROM sakila.rental;
SELECT 
    COUNT(DISTINCT inventory.inventory_id) AS films_available_for_rent,
    COUNT(DISTINCT rental.inventory_id) AS films_rented
FROM 
    inventory
    
LEFT JOIN 
    rental ON inventory.inventory_id = rental.inventory_id;
#FEEL wrong  I don't know wich category too choose 

# 5.4 Determine the number of distinct last names of the actors in the database.

USE sakila;

SELECT COUNT(DISTINCT last_name) AS num_last_names
FROM actor;

	#6 Retrieve the 10 longest films.
SELECT *
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

	#7 Use filtering techniques in order to:

#7.1 Retrieve all actors with the first name "SCARLETT".

SELECT *
FROM sakila.actor
WHERE first_name = 'SCARLETT';


