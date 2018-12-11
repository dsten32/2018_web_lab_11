-- Answers to Exercise 9 here
SELECT * FROM dwc1_rentals;

SELECT customer_num,first_name,last_name,gender,dob,join_date FROM dwc1_rentals;

SELECT article_title FROM dwc1_articles;

SELECT DISTINCT director FROM dwc1_movies;

SELECT title FROM dwc1_movies WHERE charge <=2;

SELECT username FROM dwc1_programers_testing ORDER BY username;

SELECT username FROM dwc1_programers_testing WHERE first_name like 'Pete%';

SELECT username FROM dwc1_programers_testing WHERE first_name like 'Pete%' OR last_name like 'Pete%';




SELECT movie_id INTO @movie_rented FROM dwc1_movies WHERE cust_num_loaned =10 ;

SELECT title FROM dwc1_movies WHERE movie_id = @movie_rented;


