CREATE TABLE games (id INTEGER PRIMARY KEY, name TEXT, price INTEGER ); 

INSERT INTO games VALUES (1, "CSGO", 100); 

INSERT INTO games VALUES (2, "League", 50); 

SELECT * FROM games; 


SELECT SUM(price) FROM games; 
