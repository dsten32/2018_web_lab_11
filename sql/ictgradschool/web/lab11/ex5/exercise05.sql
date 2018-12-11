-- Answers to Exercise 5 here
DROP TABLE IF EXISTS dwc1_programers_testing;

CREATE TABLE IF NOT EXISTS dwc1_programers_testing (
  username varchar(15) NOT NULL,
  first_name varchar(32),
  last_name varchar(32),
  email varchar(64),
  PRIMARY KEY (username),
  CHECK (email LIKE '%@%')
);

INSERT INTO dwc1_programers_testing VALUES
                                   ('programmer1','Bill','Gates','bill@microsoft.com'),
                                   ('programmer2','Peter','Personman','my@email.com'),
                                   ('programmer3','Pete','Himson','my2@email.com'),
                                   ('programmer4','Amy','Bill','my@email.com'),
                                   ('programmer5','Jamie','Look','my@email.com'),
                                   ('programmer6','Manny','Suck','my@email.com'),
                                   ('programmer7','Superman','Hi','my@email.com'),
                                   ('programmer8','Zippy','Dipstick','my@email.com'),
                                   ('programmer9','Dude','Imaginatron','my@email.com'),
                                   ('programmer10','MrMan','Sherbert','my@email.com'),
                                   ('programmer11','Me','Herbert','my@email.com');

INSERT INTO dwc1_programers_testing VALUES ('programmer1','Willam','Gates','will@microsoft.com');