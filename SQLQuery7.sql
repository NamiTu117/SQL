CREATE DATABASE db_movie

CREATE TABLE tbl_movies (
	movie_id INT PRIMARY KEY NOT NULL IDENTITY (1,1), 
	movie_actor VARCHAR(50) NOT NULL, 
	movie_name VARCHAR(50) NOT NULL, 
	movie_genre VARCHAR(50) NOT NULL
); 



INSERT INTO tbl_movies
	(movie_actor, movie_name, movie_genre)
	VALUES 
	('Keanu Reeves', 'Speed', 'Action'),
	('Jack Black','School of Rock', 'Comedy'),
	('Vera Farmiga', 'Orphan', 'Thriller'),
	('Kate Beckinsale', 'Underworld', 'Action'),
	('Kal Penn', 'Harold & Kumar', 'Comedy')
; 
SELECT * FROM tbl_movies; 

CREATE TABLE tbl_director (
	director_id INT PRIMARY KEY NOT NULL IDENTITY(1,1), 
	director_name VARCHAR(50) NOT NULL, 
	director_movie INT CONSTRAINT fk_movie_id FOREIGN KEY REFERENCES tbl_movies(movie_id) ON UPDATE CASCADE ON DELETE CASCADE, 
	director_cost MONEY NOT NULL 
); 
SELECT * FROM tbl_director

INSERT INTO tbl_director 
(director_name, director_movie, director_cost)
VALUES
('Aloyna Smith', 5, 150000),
('Jacquelyn Harris', 4, 340000),
('Robert T.', 1, 130000),
('Andy Yang', 3, 540000),
('Ulysses G.', 2, 350000)
;

SELECT 
	a1. director_name
	FROM tbl_director a1
	INNER JOIN tbl_movies a2 ON a2.movie_id = a1.director_name
;
	