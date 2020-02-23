/* What does the app's SQL look like? */

CREATE TABLE pizza (id INTEGER PRIMARY KEY, name TEXT, price INTEGER ); 

  

INSERT INTO pizza VALUES (1, "cheese", 4); 

INSERT INTO pizza VALUES (2, "apple", 1); 

INSERT INTO pizza VALUES (3, "plain", 2); 

SELECT * FROM pizza; 


UPDATE pizza SET name = "banana" WHERE id = 2; 

SELECT * FROM pizza; 

DELETE FROM pizza WHERE id = 3; 
SELECT * FROM pizza; 
