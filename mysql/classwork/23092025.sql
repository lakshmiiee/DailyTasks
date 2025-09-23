--  Add the following 3 books into the books table:
-- (1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200)
-- (2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000)
-- (3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800)
-- Add the following 2 books into the bestsellers table:
-- (4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500)
-- (5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200)
-- Show the list of all books from both tables, displaying only the title and author.
-- Display all books from the books table where the price is greater than 400.
-- Show the average price of books in the books table.
-- Display the number of books in the books table using a count.
-- Show the title and author from books table with aliases Book Title and Written By. -->

SELECT `title`, `author` FROM `bestsellers` UNION ALL SELECT `title`,`author` FROM books;

-- <!-- Ikigai
-- Francesc Miralles
-- Think Like a Monk
-- Jay Shetty
-- The Silent Patient
-- Alex Michaelides
-- Atomic Habits
-- James Clear
-- The Psychology of Money
-- Morgan Housel -->

SELECT * FROM `books` WHERE price>400;

-- <!-- 2
-- Atomic Habits
-- James Clear
-- Self-help
-- 499
-- 2000 -->

SELECT AVG(price) FROM `books`;
-- <!-- 
-- AVG(price)
-- 416.0000 -->

SELECT COUNT(title) FROM `books`;
-- <!-- COUNT(title)
-- 3 -->

SELECT `title` AS 'Book Title', `author`AS 'Written By' FROM `books`;
 
-- <!-- Book Title
-- Written By

-- The Silent Patient
-- Alex Michaelides

-- Delete Delete
-- Atomic Habits
-- James Clear

-- Delete Delete
-- The Psychology of Money
-- Morgan Housel


--  -->
