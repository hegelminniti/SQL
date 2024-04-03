/* You've received new stock for the bookstore. Insert details for the following books:

"A Journey to the Center" by Jules Verne

Genre: Adventure
Published Year: 1864
ISBN: 1234567890123
Price: $12.99
Rating: 4.5
Stock Count: 10
Publisher: Verne Publishing
Pages: 350


"War and Peace" by Leo Tolstoy

Genre: Historical
Published Year: 1869
ISBN: 1234567890124
Price: $14.99
Rating: 4.8
Stock Count: 5
Publisher: Tolstoy Prints
Pages: 1200
"Whispers of the Wind" by Amelia Blackburn

Genre: Romance
Published Year: 1982
ISBN: 1234567890125
Price: $9.99
Rating: 4.2
Stock Count: 20
Publisher: Blackburn House
Pages: 275
"The Galactic Odyssey" by Orion Starfield

Genre: Science Fiction
Published Year: 2005
ISBN: 1234567890126
Price: $19.99
Rating: 4.9
Stock Count: 15
Publisher: Nebula Press
Pages: 450
Based on these details, insert the information into the Books table. */

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
