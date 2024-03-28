/* Imagine you're designing a database to manage a bookstore. Create a table named "Books" with attributes for book_id, title, author, genre, published_year, isbn, price, rating, and stock_count. */


CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    genre VARCHAR(50),
    published_year INT,
    isbn VARCHAR(20),
    price DECIMAL,
    rating DECIMAL,
    stock_count INT
)

/* You want to add more details about each book. Modify the "Books" table to include columns for the publisher and the number of pages. */

ALTER TABLE Books
ADD COLUMN publisher TEXT

ALTER TABLE Books
ADD COLUMN number_of_pages INT