DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists(
    id SERIAL PRIMARY KEY,
    name VARCHAR(225)
);

CREATE TABLE albums(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(255),
    artist INT NOT NULL REFERENCES artists(id)
);

INSERT INTO artists (name) VALUES ('Fleetwood Mac');
INSERT INTO artists (name) VALUES ('Kendrick Lamar');
-- INSERT INTO albums (title, genre, artist) VALUES ('Rumors', 'Rock', album.artist_id);
-- INSERT INTO albums (title, genre, artist) VALUES    ('DAMN.', 'Rap', artist_id);