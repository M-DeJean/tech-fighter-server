CREATE TABLE techFighter_characters (
    id SERIAL PRIMARY KEY,
    fighter_name TEXT NOT NULL,
    hometown TEXT NOT NULL,
    height DEC NOT NULL,
    fighter_weight INTEGER NOT NULL,
    wins INT DEFAULT 0 NOT NULL,
    losses INT DEFAULT 0 NOT NULL
);