CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);
    
INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);
    
    SELECT customers.name, customers.email, orders.item, orders.price 
    FROM customers 
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id;
    
    
    SELECT customers.name, customers.email, SUM(orders.price) AS "total"
    FROM customers 
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id
    GROUP BY customers.name
    ORDER BY orders.price DESC;
    
    /*sum orders.price as sum up what price have in the orders */
    /* is doing math ops need save somewhere, so into the AS */
    
    /*GROUP BY on most unique! => name is most unique as price can be same, email possibly but name more official and cleaner*/
    
    /*order by orders.price as want that to be main order according to. inlude the DESC or else it is not greatest to least (as want)*/

    
    
    
    
    