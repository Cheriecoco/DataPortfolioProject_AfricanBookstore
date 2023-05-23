CREATE DATABASE bookstore;
USE bookstore;
CREATE TABLE authors (
  id INT PRIMARY KEY,
  name TEXT,
  birth_year INT
);
CREATE TABLE books (
  id INT PRIMARY KEY,
  title TEXT,
  author_id INT,
  publication_year INT,
  price DECIMAL,
  FOREIGN KEY (author_id) REFERENCES authors(id)
);
INSERT INTO authors (id, name, birth_year) VALUES
  (1, 'Chimamanda Ngozi Adichie', 1977),
  (2, 'Chinua Achebe', 1966),
  (3, 'Chigozie Obioma', 1986),
  (4, 'Ayobami Adebayo', 1988),
  (5, 'Oyinkan Braithwaite', 1988); 
  
 -- ALTER TABLE books MODIFY COLUMN price DECIMAL(8,2);
 

  
  
SELECT b.title, a.name
FROM books b
JOIN authors a ON b.author_id = a.id;

UPDATE books
SET title = 'Half of a Yellow Sun', author_id = 1, publication_year = 2004, price = 10.99
WHERE id = 1;

SELECT title, publication_year
FROM books
WHERE publication_year > 2000;

CREATE TABLE books (
  id INT PRIMARY KEY,
  title VARCHAR(255),
  author_id INT,
  publication_year INT,
  price DECIMAL(8,2)
);
INSERT INTO books (id, title, author_id, publication_year, price) VALUES
  (1, 'Half of a Yellow Sun', 1, 2004, 10.99),
  (2, 'Things Fall Apart', 2, 2006, 8.99),
  (3, 'Pride and Punishment', 3, 2021, 7.50),
  (4, 'A Spell of Good Things', 4, 2023, 14.00),
  (5, 'My Sister, the Serial Killer', 5, 2018, 5.00);
  
  SELECT * FROM books;
  
SELECT title, publication_year
FROM books
WHERE publication_year > 2000;

SELECT SUM(price) AS total_price
FROM books;

SELECT * FROM books ORDER BY publication_year ASC;
COMMIT;
