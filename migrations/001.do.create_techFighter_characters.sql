CREATE TABLE techFighter_characters (
    id SERIAL PRIAMARY KEY,
    name TEXT NOT NULL,
    hometown TEXT NOT NULL,
    height DEC NOT NULL,
    weight INTEGER NOT NULL,
    wins NOT NULL DEFAULT 0
    losses NOT NULL DEFAULT 0
);