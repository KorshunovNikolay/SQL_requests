CREATE TABLE IF NOT EXISTS Music_style (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) not null
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	release_year DATE NOT NULL CHECK (release_year > '2018-01-01')
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL CHECK (duration > 0 AND duration <= 600),
	album_id INTEGER REFERENCES Album(id) 
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	release_year DATE NOT NULL CHECK (release_year > '2018-01-01')
);

CREATE TABLE IF NOT EXISTS Artist_style (
	artist_id INTEGER REFERENCES Artist(id),
	style_id INTEGER REFERENCES Music_style(id),
	CONSTRAINT pk_as PRIMARY KEY (artist_id, style_id)
);

CREATE TABLE IF NOT EXISTS Artist_album (
	artist_id INTEGER REFERENCES Artist(id),
	album_id INTEGER REFERENCES Album(id),
	CONSTRAINT pk_aa PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Track_collection (
	track_id INTEGER REFERENCES Track(id),
	collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk_tc PRIMARY KEY (track_id, collection_id)
);