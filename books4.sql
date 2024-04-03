/* There's been a price reduction for "War and Peace" and one copy has been sold. Update the price and stock count for this book. */

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    genre VARCHAR(50),
    published_year INT,
    isbn VARCHAR(20),
    price VARCHAR(20),
    rating DECIMAL,
    stock_count INT
)


ALTER TABLE Books
ADD COLUMN publisher TEXT

ALTER TABLE Books
ADD COLUMN number_of_pages INT

INSERT INTO Books VALUES (1, "A Journey to the Center", "Jules Verne" "Adventure", 1864, 1234567890123, "$12.99", 4.5, 10, "Verne Publishing", 350)
INSERT INTO Books VALUES (2, "War and Peace", "Leo Tolstoy" "Historical", 1869, 1234567890124, "$14.99", 4.8, 5, "Tolstoy Prints", 1200)
INSERT INTO Books VALUES (3, "Whispers of the Wind", "Amelia Blackburn" "Romance", 1982, 1234567890125, "$9.99", 4.2, 20, "Blackburn House", 275)
INSERT INTO Books VALUES (4, "The Galactic Odyssey", "Orion Starfield" "Science Fiction", 2005, 1234567890126, "$19.99", 4.9, 15, "Nebula Press", 450)

UPDATE Books SET price = "$10.99", stock_count = 4 WHERE title = 'War and Peace'