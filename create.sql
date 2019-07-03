INSERT INTO addresses
VALUES
    (
        4,
        'USA',
        'New York',
        'Green',
        '66',
        '23584'
    );
	
INSERT INTO directors
VALUES
    (
		7,
		'Lilya',
		1997,
		NULL,
		'Ukrainian'
	);
	
INSERT INTO studios
VALUES
    (
		4,
		1,
		'Disney',
		5

	),
    (
		5,
		2,
		'WB',
		6
	);
	
INSERT INTO movies
VALUES
    (
		5,
		1,
		'Toy',
		'2 hours',
		2015,
		2345678,
		2,
		'2015-08-19',
		4
	);
	(
		6,
		2,
		'Eye',
		'1 hours',
		2018,
		23456789,
		2,
		'2019-01-01',
		3
	);	

	DELETE FROM movies WHERE name = 'Avatar';

	DELETE FROM directors WHERE name = 'Leo';

	DELETE FROM studios WHERE name = 'Disney';


	SELECT * FROM movies;

	SELECT * FROM directors;

	SELECT * FROM studios;

	
	SELECT * FROM movies where name LIKE '%o%';
	
	SELECT * FROM directors where name LIKE '%an%';
	
	SELECT * FROM studios where name LIKE '%arn%';


	select movies.name,directors.name from movies, directors where movies.director_id=directors.id and directors.name='Yana';

	select movies.name,studios.name from movies, studios where movies.studio_id=studios.id and studios.name='Disney';


    SELECT * FROM movies ORDER BY name;

    SELECT * FROM directors ORDER BY birth_year DESC;
	





    
