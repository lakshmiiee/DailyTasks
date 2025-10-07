-- Imagine you are creating a simple system for a school library. Each book has a unique ID and belongs to a single category 
--(like Fiction, Science, History, etc.), but each category can have many books.
-- Create two tables:
-- categories with category details
-- books with book details, where each book is linked to a category
-- Use AUTO_INCREMENT for the IDs.
-- Add a one-to-many relationship between categories and books.
-- Create an index on the book_name column of the books table.
-- Show all indexes in the books table


CREATE TABLE categories (
    category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

CREATE TABLE books (
    book_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    book_name VARCHAR(255) NOT NULL,
    category_id INT NOT NULL,
    INDEX (book_name),  -- Create index on book_name for faster search
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


SHOW INDEXES FROM books;
