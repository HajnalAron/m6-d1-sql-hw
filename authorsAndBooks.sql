author_id INTEGER REFERENCES authors(author_id)
-- INSERT
 

-- Add 5 Agatha Cristie books ( https://www.agathachristie.com/stories)
INSERT INTO books (name,category,author_id,published_at) VALUES('Murder on the Orient Express', 'detective', 2, '2010');
 

-- Query to update author birth_year for given author id => 
UPDATE authors SET birth_year=2021-birth_year WHERE author_id=2

 

-- UPDATE

 

-- Write an update query to update books cover for given book id => 
UPDATE books SET cover='https://m.media-amazon.com/images/M/MV5BOTVlY2VhMWEtYmRlOC00YWVhLWEzMDktZWJlYzNiMWJmZTIwXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg' WHERE book_id=2

-- Write an update query to update  authors birth year => 
UPDATE authors SET birth_year=1969 WHERE author_id=2

 

-- SELECT
 

-- Select books from a category (any) => 
SELECT * FROM books WHERE category='detective';
-- Select books which start with a letter (any letter) => 
SELECT * FROM books WHERE LEFT(name,1)='A'
-- Select books which include a given word  (any word) => 
SELECT * FROM books WHERE name LIKE '%Came%'
-- Select authors which are “not” older than 60 years () 
SELECT * FROM authors WHERE birth_year < 60
-- Select authors which are  older than 40 years old 
SELECT * FROM authors WHERE birth_year > 40
-- Select only category,published_at from books => 
SELECT * FROM books WHERE published_at=1993
-- Count all books => 
SELECT COUNT(*) FROM books
-- Select authors and order them by age (calculate age in SQL, search about it 🤓) ASC
SELECT * FROM authors ORDER BY 2021-birth_year ASC
-- Select authors and order them by birth_year desc 
SELECT * FROM authors ORDER BY birth_year DESC
 

 

 

-- DELETE
-- Delete all the authors from a given country  
DELETE FROM authors WHERE country='USA'

-- Delete all the books from a given category => 
DELETE FROM books WHERE category='fiction'

-- Delete all authors if their last_name starts with H => 
DELETE FROM authors WHERE LEFT(last_name,1)='M'