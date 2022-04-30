DROP TABLE IF EXISTS moods_diet_sleep;
DROP TABLE IF EXISTS user_profiles;
DROP TABLE IF EXISTS diet;
DROP TABLE IF EXISTS moods;


CREATE TABLE users (
user_id SERIAL PRIMARY KEY,
username VARCHAR(255),
email VARCHAR(255),
password_hash VARCHAR(255)
);

CREATE TABLE moods_diet_sleep (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
mood_rating INTEGER,
diet_rating INTEGER,
sleep_rating INTEGER, 
created_on TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE diet (
id SERIAL PRIMARY KEY,
diet_rating INTEGER,
food_items VARCHAR(255)
);

CREATE TABLE moods (
id SERIAL PRIMARY KEY,
mood_rating INTEGER,
emotions VARCHAR(255)
);


-- test seed
INSERT INTO moods_diet_sleep (name, mood_rating, sleep_rating, diet_rating) VALUES('Sarah',5, 6, 4);


INSERT INTO users (email, name, password_hash) VALUES ('bob@example.com', 'Bob Example', '$2b$12$TpvX8HcLDBfx.LOaNefsI.hBFars/nSddrxqcYDxb5VDQfughklBa')
INSERT INTO users (email, name, password_hash) VALUES ('sally@example.com', 'Sally Example', '$2b$12$d8iYmpmksEHmPqnCVDxGC.ZDID3KkS6jR8uH.fHewhOYm7UXJaJv6')
INSERT INTO users (email, name, password_hash) VALUES ('sarah@example.com', 'Sarah S', '$2b$12$9g26teeYwsnDNQg.5D4EAOhT9uWneeAid.O1ppRSQLJVeUcZAUVPC' )
INSERT INTO users (email, name, password_hash) VALUES ('jenny@example.com', 'Jenny J', '$2b$12$9g26teeYwsnDNQg.5D4EAOhT9uWneeAid.O1ppRSQLJVeUcZAUVPC')
