/* Create table about the people and what they do here */


CREATE TABLE people (
id INTEGER PRIMARY KEY, 
name TEXT); 

INSERT INTO people (name) VALUES ("Bob"); 
INSERT INTO people (name) VALUES ("Bill"); 
INSERT INTO people (name) VALUES ("Jake"); 
INSERT INTO people (name) VALUES ("Mike"); 
INSERT INTO people (name) VALUES ("Jo"); 
INSERT INTO people (name) VALUES ("Lilly"); 
INSERT INTO people (name) VALUES ("Jack"); 
INSERT INTO people (name) VALUES ("Bo"); 
INSERT INTO people (name) VALUES ("Peep"); 
INSERT INTO people (name) VALUES ("Molly"); 
INSERT INTO people (name) VALUES ("Don"); 
INSERT INTO people (name) VALUES ("Zack"); 
INSERT INTO people (name) VALUES ("Luke"); 
INSERT INTO people (name) VALUES ("Mickey"); 
INSERT INTO people (name) VALUES ("Tom");

CREATE TABLE work (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    people_id INTEGER,
    job TEXT);
    
INSERT INTO work (people_id, job) VALUES (1, "cook");
INSERT INTO work (people_id, job) VALUES (2, "baker");
INSERT INTO work (people_id, job) VALUES (3, "nurse");
INSERT INTO work (people_id, job) VALUES (4, "soldier");
INSERT INTO work (people_id, job) VALUES (5, "police");
INSERT INTO work (people_id, job) VALUES (6, "babysitter");
INSERT INTO work (people_id, job) VALUES (7, "cleaner");
INSERT INTO work (people_id, job) VALUES (8, "firefighter");
INSERT INTO work (people_id, job) VALUES (9, "teacher");
INSERT INTO work (people_id, job) VALUES (10, "engineer");
INSERT INTO work (people_id, job) VALUES (11, "plumber");
INSERT INTO work (people_id, job) VALUES (12, "gamer");
INSERT INTO work (people_id, job) VALUES (13, "nanny");
INSERT INTO work (people_id, job) VALUES (14, "artist");
INSERT INTO work (people_id, job) VALUES (15, "author");


SELECT * FROM people; 

SELECT people.name, work.job
FROM people 
JOIN work 
ON people.id = work.people_id;

