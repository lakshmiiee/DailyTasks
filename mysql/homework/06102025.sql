-- You are designing a simple database for an online book store. The store keeps track of authors and the books they write.
-- Create a table for authors with the following information:
-- Author ID (a unique number for each author)
-- Author name (e.g., "Chetan Bhagat")
-- Email address (should be unique)
-- Create a table for books with the following information:
-- Book ID (a unique number for each book)
-- Book title
-- Author ID (to show which author wrote the book)
-- Apply appropriate rules so that:
-- No two authors can have the same email address.
-- Each author and book must have a unique ID.
-- Each book must be linked to an existing author.

-- Create authors table
CREATE TABLE authors (
    author_id INT NOT NULL AUTO_INCREMENT,
    author_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (author_id)
);

-- Create books table with foreign key constraint
CREATE TABLE books (
    book_id INT NOT NULL AUTO_INCREMENT,
    book_title VARCHAR(200) NOT NULL,
    author_id INT NOT NULL,
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);


