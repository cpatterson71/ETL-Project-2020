CREATE TABLE breweries(
	id INT NOT NULL PRIMARY KEY,
	name VARCHAR,
	city VARCHAR,
	state VARCHAR,
	country VARCHAR,
	types VARCHAR
);

CREATE TABLE beers(
	id INT PRIMARY KEY,
	name VARCHAR,
	brewery_id INT,
	state VARCHAR,
	country VARCHAR,
	style VARCHAR,
	availability VARCHAR,
	abv FLOAT,
	FOREIGN KEY (brewery_id) REFERENCES breweries(id)
);

CREATE TABLE reviews(
	id INT,
	look FLOAT,
	smell FLOAT,
	taste FLOAT,
	feel FLOAT,
	overall FLOAT,
	score FLOAT,
	FOREIGN KEY (id) REFERENCES beers(id)
);