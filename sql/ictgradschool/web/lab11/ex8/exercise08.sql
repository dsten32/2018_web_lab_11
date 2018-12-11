-- Answers to Exercise 8 here
DELETE FROM dwc1_programers_testing WHERE username = 'programmer9';

ALTER TABLE dwc1_programers_testing DROP COLUMN email;

DROP TABLE dwc1_programers_testing;

UPDATE dwc1_article_comments
SET comm_text = 'This is new text !!!!!'
WHERE comm_num = 1;


UPDATE dwc1_movies
SET year = 1111
where movie_id =18762093;


UPDATE dwc1_movies
SET movie_id = 1
WHERE movie_id = 18762093