CREATE TABLE attacks (
    id SERIAL PRIMARY KEY,
    attack_name TEXT NOT NULL,
    button TEXT NOT NULL,
    damage INT NOT NULL,
    energy_cost INT NOT NULL,
    styleId INT REFERENCES fighting_styles(id) ON DELETE CASCADE NOT NULL
);