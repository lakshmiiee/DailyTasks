-- You are working on a small movie database for a local cinema app. The table is called movies, and it contains the following details:
-- id (number)
-- title (text)
-- genre (text)
-- release_year (number)
-- rating (decimal out of 10)
-- box_office (number in crores)
-- Your tasks:
-- Add the following five movies into the table:
-- (1, 'Inception', 'Sci-Fi', 2010, 8.8, 825)
-- (2, 'The Dark Knight', 'Action', 2008, 9.0, 1004)
-- (3, 'Interstellar', 'Sci-Fi', 2014, 8.6, 677)
-- (4, 'Joker', 'Drama', 2019, 8.4, 1074)
-- (5, 'Dunkirk', 'War', 2017, 7.9, 527)
-- Show only the movie title and its box_office collection but rename the column box_office as Earnings (in Cr).
-- Display the movie titles and rename them as Movie Title, along with their genre as Category.
-- Select all movies where genre is either 'Sci-Fi' or 'Action' using IN, and rename rating as IMDb Score.
-- Find movies released between 2008 and 2015 and rename the year column as Release.
-- Find out how many movies have a rating greater than 8.5 and rename the result as High Rated Movies

INSERT INTO `movies` (`id`, `title`, `genre`, `release_year`, `rating`, `box_office`) VALUES
(1, 'Inception', 'Sci-Fi', 2010, 8.8, 825),
(2, 'The Dark Knight', 'Action', 2008, 9.0, 1004),
(3, 'Interstellar', 'Sci-Fi', 2014, 8.6, 677),
(4, 'Joker', 'Drama', 2019, 8.4, 1074),
(5, 'Dunkirk', 'War', 2017, 7.9, 527);

SELECT `title`, `box_office` AS 'Earnings (in Cr)' FROM `movies`;

-- Inception
-- 825

--
-- The Dark Knight
-- 1004

-- 
-- Interstellar
-- 677


-- Joker
-- 1074


-- Dunkirk
-- 527

SELECT `title` AS 'Movie Title', `genre` AS 'Category' FROM `movies`;


-- Category
-- Movie Title


-- Sci-Fi
-- Inception


-- Action
-- The Dark Knight


-- Sci-Fi
-- Interstellar


-- Drama
-- Joker

-- War
-- Dunkirk

SELECT `id`, `title`, `genre`, `release_year`, `rating` AS 'IMDb score', `box_office` FROM `movies` WHERE `genre` IN ('Sci-Fi', 'Action');

-- id
-- title
-- genre
-- release_year
-- IMDb score
-- box_office

-- 1
-- Inception
-- Sci-Fi
-- 2010
-- 9
-- 825

-- 2
-- The Dark Knight
-- Action
-- 2008
-- 9
-- 1004

-- 3
-- Interstellar
-- Sci-Fi
-- 2014
-- 9
-- 677

SELECT `id`, `title`, `genre`, `release_year` AS 'Release', `rating`, `box_office` FROM `movies` WHERE `release_year` BETWEEN 2008 AND 2015;


-- id
-- title
-- genre
-- release
-- rating
-- box_office

-- 1
-- Inception
-- Sci-Fi
-- 2010
-- 9
-- 825

-- 2
-- The Dark Knight
-- Action
-- 2008
-- 9
-- 1004

-- 3
-- Interstellar
-- Sci-Fi
-- 2014
-- 9
-- 677

SELECT COUNT(`title`) AS 'High Rated Movies' FROM `movies` WHERE `rating`>8.5;

-- High Rated Movies
-- 3
