/* Put your data in here and query it! */


CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, price INTEGER); 

  

INSERT INTO groceries VALUES (1, "bananas", 1); 

INSERT INTO groceries VALUES (2, "peanut Butter", 1); 

INSERT INTO groceries VALUES (3, "dark chocolate bars", 2); 

INSERT INTO groceries VALUES (4, "milk", 3); 

INSERT INTO groceries VALUES (5, "eggs", 3); 

INSERT INTO groceries VALUES (6, "pasta", 3); 
INSERT INTO groceries VALUES (7, "rice", 1); 
INSERT INTO groceries VALUES (8, "cake", 5); 
INSERT INTO groceries VALUES (9, "meat", 6); 
INSERT INTO groceries VALUES (10, "pie", 2); 
INSERT INTO groceries VALUES (11, "candy", 3); 
INSERT INTO groceries VALUES (12, "burger", 3); 
INSERT INTO groceries VALUES (13, "fries", 3); 
INSERT INTO groceries VALUES (14, "bread",1 ); 
INSERT INTO groceries VALUES (15, "ketchup", 2); 
INSERT INTO groceries VALUES (16, "dorritos", 3); 
INSERT INTO groceries VALUES (17, "chips", 1); 
INSERT INTO groceries VALUES (18, "fish", 5); 
INSERT INTO groceries VALUES (19, "apple", 1); 
INSERT INTO groceries VALUES (20, "orange", 1); 

SELECT * FROM groceries; 


SELECT * FROM groceries WHERE price > 2 AND price < 4; 



SELECT COUNT (*),  

  

    CASE   

  

        WHEN price > 5 THEN "cant afford"  

  

        WHEN price > 4 THEN "probably"  

  

        WHEN price > 3 THEN "fine"  
        
        WHEN price > 2 THEN "will buy"  

  

        ELSE "totally"  

  

    END as cheapness  

  

FROM groceries 

  

GROUP BY cheapness; 


SELECT SUM(price) FROM groceries; 