CREATE SCHEMA posts;

CREATE TABLE posts (
	id				BIGSERIAL		PRIMARY KEY,
	author_id		BIGINT			REFERENCES users ON DELETE RESTRICT,
	title			VARCHAR(60)		NOT NULL,
	body			TEXT			NOT NULL,
	status			INTEGER			NOT NULL,
	created			TIMESTAMP		NOT NULL DEFAULT now()
);