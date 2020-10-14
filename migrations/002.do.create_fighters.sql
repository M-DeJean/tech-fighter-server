CREATE TABLE fighters (
    id SERIAL PRIMARY KEY,
    fighter_name TEXT NOT NULL,
    hometown TEXT NOT NULL,
    height DEC NOT NULL,
    fighter_weight INTEGER NOT NULL,
    wins INT DEFAULT 0 NOT NULL,
    losses INT DEFAULT 0 NOT NULL,
    styleId INT REFERENCES fighting_styles(id) ON DELETE CASCADE NOT NULL,
    attack INT NOT NULL,
    defense INT NOT NULL,
    speed INT NOT NULL,
    health INT NOT NULL,
    stamina INT NOT NULL
);

