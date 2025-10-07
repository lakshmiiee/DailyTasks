--  You are designing a basic inventory system for a library. Your task is to:
-- Create a table named authors with the following:
-- author_id which should increase automatically for every new author added
-- name of the author
-- Create another table named books with the following:
-- book_id which should also increase automatically
-- title of the book
-- author_id which connects each book to an author
-- Make sure that one author can have many books (one-to-many relationship).
-- Create an index on the author_id column in the books table to improve search performance.



create table authors
(author_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,name TEXT NOT NULL);

CREATE TABLE BOOKS
(book_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,title TEXT NOT NULL,author_id INT NOT NULL,INDEX(author_id),
FOREIGN KEY (author_id) REFERENCES authors(author_id));
                   