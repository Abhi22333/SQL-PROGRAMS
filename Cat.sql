create database cat;
use cat;
 CREATE TABLE movie_info (id VARCHAR(100),name VARCHAR(100),release_date VARCHAR(100),genre VARCHAR(100),rating INT,duration INT,budget BIGINT,revenue BIGINT,award BOOLEAN);

ALTER TABLE movie_info ADD COLUMN director VARCHAR(100);
ALTER TABLE movie_info ADD COLUMN writer VARCHAR(100);
ALTER TABLE movie_info ADD COLUMN producer VARCHAR(100);
ALTER TABLE movie_info ADD COLUMN production_company VARCHAR(100);
ALTER TABLE movie_info ADD COLUMN awards VARCHAR(100);
ALTER TABLE movie_info RENAME COLUMN id TO movie_id;
ALTER TABLE movie_info RENAME COLUMN name TO movie_name;
ALTER TABLE movie_info RENAME COLUMN release_date TO release_year;
ALTER TABLE movie_info RENAME COLUMN genre TO movie_genre;
ALTER TABLE movie_info RENAME COLUMN rating TO movie_rating;
INSERT INTO movie_info (movie_id, movie_name, release_year, movie_genre, movie_rating, director, writer, producer, production_company, awards)
VALUES
('1', 'The Shawshank Redemption', '1994', 'Drama', 9, 'Frank Darabont', 'Stephen King', 'Niki Marvin', 'Columbia Pictures', 'Academy Award for Best Picture'),
('2', 'The Godfather', '1972', 'Crime', 8, 'Francis Ford Coppola', 'Mario Puzo', 'Albert S. Ruddy', 'Paramount Pictures', 'Academy Award for Best Picture'),
('3', 'The Dark Knight', '2008', 'Action', 8.5, 'Christopher Nolan', 'Jonathan Nolan', 'Charles Roven', 'Warner Bros. Pictures', 'Academy Award for Best Picture'),
('4', '12 Angry Men', '1957', 'Drama', 8, 'Sidney Lumet', 'Reginald Rose', 'Henry Fonda', 'United Artists', 'Academy Award for Best Picture'),
('5', 'Schindler''s List', '1993', 'Historical Drama', 7, 'Steven Spielberg', 'Steven Zaillian', 'Gerald R. Molen', 'Universal Pictures', 'Academy Award for Best Picture'),
('6', 'The Lord of the Rings: The Return of the King', '2003', 'Fantasy', 9, 'Peter Jackson', 'Fran Walsh', 'Barrie M. Osborne', 'New Line Cinema', 'Academy Award for Best Picture'),
('7', 'Pulp Fiction', '1994', 'Crime', 7.5, 'Quentin Tarantino', 'Quentin Tarantino', 'Lawrence Bender', 'Miramax Films', 'Academy Award for Best Picture'),
('8', 'The Good, the Bad and the Ugly', '1966', 'Western', 8.5, 'Sergio Leone', 'Sergio Leone', 'Alberto Grimaldi', 'United Artists', 'Academy Award for Best Picture'),
('9', 'Forrest Gump', '1994', 'Drama', 7, 'Robert Zemeckis', 'Eric Roth', 'Wendy Finerman', 'Paramount Pictures', 'Academy Award for Best Picture'),
('10', 'Star Wars: Episode IV - A New Hope', '1977', 'Science Fiction', 7.5, 'George Lucas', 'George Lucas', 'Gary Kurtz', '20th Century Fox', 'Academy Award for Best Picture');

UPDATE movie_info SET movie_rating = 10 WHERE movie_id = '1';
UPDATE movie_info SET director = 'Steven Spielberg' WHERE movie_id = '5';
UPDATE movie_info SET production_company = 'Warner Bros. Pictures' WHERE movie_id = '3';
UPDATE movie_info SET awards = 'Academy Award for Best Director' WHERE movie_id = '2';
UPDATE movie_info SET release_year = '1995' WHERE movie_id = '4';
UPDATE movie_info SET movie_genre = 'Science Fiction' WHERE movie_id = '10';
UPDATE movie_info SET writer = 'George Lucas' WHERE movie_id = '10';
UPDATE movie_info SET producer = 'Gary Kurtz' WHERE movie_id = '10';
UPDATE movie_info SET is_classic = TRUE WHERE movie_id = '6';
UPDATE movie_info SET duration = 180 WHERE movie_id = '8';
DELETE FROM movie_info WHERE movie_id = '1';
DELETE FROM movie_info WHERE movie_id = '3';
DELETE FROM movie_info WHERE movie_id = '6';
SELECT * FROM movie_info WHERE movie_rating = 8;
SELECT * FROM movie_info WHERE director = 'Steven Spielberg' AND movie_genre = 'Historical Drama';
SELECT * FROM movie_info WHERE director = 'Steven ' OR movie_id=6;
SELECT * FROM movie_info WHERE movie_id IN ('2', '4', '5');