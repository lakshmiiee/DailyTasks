
-- You are helping manage a simple system for a local library. The librarian has two tables:
-- books – which stores book details
-- borrowers – which stores information about who borrowed which book

-- Your tasks are:
-- Show the list of all books along with the name of the person who borrowed them (if borrowed).




-- books table
-- book_id | title
-- --------|-----------------
-- 1       | The Alchemist
-- 2       | The Power of Now
-- 3       | Think and Grow Rich
-- 4       | Clean Code

-- -- borrowers table

-- borrower_id | name        | book_id
-- ------------      |-------------  |--------
-- 101              | Alice         | 1
-- 102              | Bob          | 2
-- 103              | Charlie     | NULL


INSERT INTO `books`(`books_id`, `title`) VALUES ('1','The Alchemist'),('2','The Power of Now'),('3','Think and Grow Rich'),('4','Clean Code');

INSERT INTO `borrowed`(`borrower_id`, `name`, `book_id`) VALUES ('101','Alice','1'),('102','Bob','2'),('103','Charlie',NULL);

SELECT b.books_id, b.title, br.name
FROM books b
LEFT JOIN borrowed br ON b.books_id = br.book_id;

-- books_id
-- title
-- name
-- 1
-- The Alchemist
-- Alice
-- 2
-- The Power of Now
-- Bob
-- 3
-- Think and Grow Rich
-- NULL
-- 4
-- Clean Code
-- NULL

-- Show the list of all borrowers along with the book details they borrowed (if any).
SELECT br.book_id,br.borrower_id, b.title, br.name FROM borrowed br LEFT JOIN books b ON br.book_id = b.book_id;

-- book_id
-- borrower_id
-- title
-- name
-- 1
-- 101
-- The Alchemist
-- Alice

-- 2
-- 102
-- The Power of Now
-- Bob

-- NULL
-- 103
-- NULL
-- Charlie

-- Show the list of all books that have not been borrowed by anyone.
SELECT b.books_id, b.title FROM books b LEFT JOIN borrowed br ON b.books_id = br.book_id WHERE br.book_id IS NULL;

-- books_id
-- title
-- 3
-- Think and Grow Rich
-- 4
-- Clean Code


-- Show the list of all borrowers even if they haven't borrowed any book.
SELECT br.borrower_id, br.name, b.books_id, b.title FROM borrowed br LEFT JOIN books b ON br.book_id = b.books_id;

-- borrower_id
-- name
-- books_id
-- title
-- 101
-- Alice
-- 1
-- The Alchemist
-- 102
-- Bob
-- 2
-- The Power of Now
-- 103
-- Charlie
-- NULL
-- NULL      



