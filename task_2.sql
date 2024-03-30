USE librarymanagement;
INSERT INTO authors (author_id, author_name)
VALUES (1, 'Bernard Cornwell');

INSERT INTO genres (genre_id, genre_name)
VALUES (1001, 'Historical novel');

INSERT INTO books (book_id, title, publication_year, author_id, genre_id)
VALUES (101, 'The Last Kingdom', '2009', 1, 1001);

INSERT INTO users (user_id, username, email)
VALUES (10001, 'John Doe', 'john.d@gmail.com');

INSERT INTO borrowed_books (borrow_id, book_id, user_id, borrow_date, return_date)
VALUES (100001, 101, 10001, '2024-03-27', '2024-04-27');