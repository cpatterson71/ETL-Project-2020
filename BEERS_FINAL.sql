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
	index INT,
	Beer_ID INT,
	Date DATE,
	Look FLOAT,
	Smell FLOAT,
	Taste FLOAT,
	Feel FLOAT,
	Overall FLOAT,
	Average_Score FLOAT,
	FOREIGN KEY (Beer_ID) REFERENCES beers(id)
);
