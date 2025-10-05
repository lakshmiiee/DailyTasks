-- You are helping manage a small online bookstore's database. The table is called books, and it stores the following details:
-- id (number)
-- title (text)
-- author (text)
-- price (number)
-- stock (number)
-- Perform the following tasks:
-- Add the following five books to the table:
-- (1, 'The Alchemist', 'Paulo Coelho', 350, 50)
-- (2, 'Atomic Habits', 'James Clear', 450, 40)
-- (3, 'The Psychology of Money', 'Morgan Housel', 400, 30)
-- (4, 'Ikigai', 'Francesc Miralles', 300, 60)
-- (5, 'Deep Work', 'Cal Newport', 500, 20)
-- Display all books that cost less than 450 and have stock more than 30.
-- Update the stock to 45 and reduce the price to 420 for the book titled ‘Deep Work’.
-- Delete the book titled ‘Ikigai’.
-- Show the average book price and total number of books currently in the table.
-- Display the top 3 most expensive books available.

INSERT INTO `books`(`id`, `title`, `author`, `price`, `stock`) VALUES (1,'The Alchemist','Paulo Coelho',350,50),(2,'Atomic Habits','James Clear',450,40),(3,'The Psychology of Money','Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);
 
SELECT * FROM books WHERE price < 450 AND stock > 30;

-- id
-- title
-- author
-- price
-- stock

-- 1
-- The Alchemist
-- Paulo Coelho
-- 350
-- 50

-- 4
-- Ikigai
-- Francesc Miralles
-- 300
-- 60

UPDATE books SET stock = 45, price = 420 WHERE title = 'Deep Work';
-- 5
-- Deep Work
-- Cal Newport
-- 420
-- 45

DELETE FROM `books` WHERE title='Ikigai';

-- id
-- title
-- author
-- price
-- stock

-- 1
-- The Alchemist
-- Paulo Coelho
-- 350
-- 50

-- 2
-- Atomic Habits
-- James Clear
-- 450
-- 40

-- 3
-- The Psychology of Money
-- Morgan Housel
-- 400
-- 30

-- 5
-- Deep Work
-- Cal Newport
-- 420
-- 45

SELECT AVG(price) AS average_price, COUNT(*) AS total_books FROM books;

-- total_books
-- avg_book_price
-- 4
-- 405.0000

SELECT * FROM books ORDER BY price DESC LIMIT 3;

-- id
-- title
-- author
-- price Descending 1
-- stock

-- 2
-- Atomic Habits
-- James Clear
-- 450
-- 40

-- 5
-- Deep Work
-- Cal Newport
-- 420
-- 45

-- 3
-- The Psychology of Money
-- Morgan Housel
-- 400
-- 30






                                                 

