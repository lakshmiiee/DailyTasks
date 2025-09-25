-- Imagine you are helping a small bookstore manage their online inventory system. Your job is to set up the database structure for their books and authors. Follow these steps:
-- Create a new database called BookStoreDB.
-- Select this database to work on.
-- Create a table named authors with the following columns:
-- author_id (number, primary key)
-- name (text)
-- country (text)
-- Create another table named books with the following columns:
-- book_id (number, primary key)
-- title (text)
-- price (number)
-- author_id (foreign key referencing authors)
-- Add a new column called published_year (number) to the books table.
-- Delete all rows from the books table without removing the table itself.
-- Remove the BookStoreDB completely from the system.

CREATE DATABASE bookstoredb;

use `bookstoredb`;

CREATE TABLE authors(author_id INT NOT NULL,name TEXT NOT NULL,country TEXT NOT NULL,PRIMARY KEY(author_id));

CREATE TABLE books(book_id INT NOT NULL,title TEXT NOT NULL,price INT NOT NULL,author_id INT,PRIMARY KEY(book_id),FOREIGN KEY(author_id) REFERENCES authors(author_id));

alter table books add published_year INT;

TRUNCATE TABLE books;

DROP DATABASE `bookstoredb`;