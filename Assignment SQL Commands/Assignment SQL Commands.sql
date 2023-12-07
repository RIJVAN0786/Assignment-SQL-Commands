use mavenmovies;

-- Identify the primary keys and foreign keys in maven movies db. Discuss the differences


-- List all details of actors
select * from actor;

-- List all customer information from DB.
select * from customer;

-- List different countries.
select distinct(country) from country;

-- Display all active customers.
select * from customer where active = 1;

-- List of all rental IDs for customer with ID 1.
select * from rental where customer_id = 1;

-- Display all the films whose rental duration is greater than 5 .
select title, rental_duration from film where rental_duration > 5;

-- List the total number of films whose replacement cost is greater than $15 and less than $20.
select count(*) from film where replacement_cost between 15 and 20 ;

-- Display the count of unique first names of actors.
select count((first_name)) from actor;

-- Display the first 10 records from the customer table .
select * from customer limit 10;

-- Display the first 3 records from the customer table whose first name starts with ‘b’.
select * from customer where first_name like 'b%' limit 3;

-- Display the names of the first 5 movies which are rated as ‘G’.
select	 * from film;
select title, rating from film where rating = 'g' limit 5;

-- Find all customers whose first name starts with "a".
select first_name, last_name from customer where first_name like 'a%';

-- Find all customers whose first name ends with "a".
select first_name, last_name from customer where first_name like '%a';

-- Display the list of first 4 cities which start and end with ‘a’ .
select city from city where city like 'a%a' limit 4;

-- Find all customers whose first name have "NI" in any position.
select first_name, last_name from customer where first_name like '%ni%';

-- Find all customers whose first name have "r" in the second position .
select first_name FROM CUSTOMER where first_name like '_r%';

-- Find all customers whose first name starts with "a" and are at least 5 characters in length.
select first_name, length(first_name) as length from customer where first_name like 'a____%';

-- Find all customers whose first name starts with "a" and ends with "o".
select first_name from customer where first_name like 'a%o';

-- Get the films with pg and pg-13 rating using IN operator.
SELECT title, rating FROM film WHERE rating IN ('PG', 'PG-13') order by rating;

-- Get the films with length between 50 to 100 using between operator.
select title, length from film where length between 50 and 100 order by length;

-- Get the top 50 actors using limit operator.
select concat(first_name," ", last_name) as full_name from actor limit 50;

-- Get the distinct film ids from inventory table.
select distinct(film_id) from inventory;
