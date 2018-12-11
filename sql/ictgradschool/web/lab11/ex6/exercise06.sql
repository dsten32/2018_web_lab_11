-- Answers to Exercise 6 here
DROP TABLE IF EXISTS dwc1_movies;

CREATE TABLE IF NOT EXISTS dwc1_movies (
  movie_id int,
  title varchar(200),
  director varchar(100),
  year INT(4),
  charge int,
  cust_num_loaned INT,
  PRIMARY KEY (movie_id),
  FOREIGN KEY (cust_num_loaned) REFERENCES dwc1_rentals (customer_num)
);

INSERT INTO dwc1_movies (movie_id, title, director, year, charge) VALUES (18762093,'Deadpool 2','David Leitch',2018,6),
                                                                         (82990163,'Once Upon a Deadpool','David Leitch',2018,2),
                                                                         (63108280,'The Mule','Clint Eastwood',2018,2),
                                                                         (45870910,'The Shawshank Redemption ()','Frank Darabont',1994,6),
                                                                         (61875546,'The Godfather ','Francis Ford Coppola',1972,2),
                                                                         (18273963,'The Godfather: Part II ','Francis Ford Coppola',1974,4),
                                                                         (11588487,'The Dark Knight ','Christopher Nolan',2008,2),
                                                                         (16832558,'12 Angry Men ','Sidney Lumet',1957,6),
                                                                         (46615047,'Schindlers List ','Steven Spielberg',1993,4),
                                                                         (94247245,'The Lord of the Rings: The Return of the King','Peter Jackson',2003,6),
                                                                         (27697420,'Pulp Fiction ','Quentin Tarantino',1994,4),
                                                                         (29799042,'The Good, the Bad and the Ugly ','Sergio Leone',1966,2),
                                                                         (7212463,' Fight Club ','David Fincher',1999,4),
                                                                         (10471481,' The Lord of the Rings: The Fellowship of the Ring','Peter Jackson',2001,6),
                                                                         (46303788,' Forrest Gump ','Robert Zemeckis',1994,6);



UPDATE dwc1_movies
SET cust_num_loaned = 9
WHERE movie_id = 11588487;



CREATE TABLE dwc1_movies_rented (
  movie_id int,
  customer_num INT
);

INSERT INTO dwc1_movies_rented
SELECT movie_id,cust_num_loaned FROM dwc1_movies where cust_num_loaned is not NULL;
