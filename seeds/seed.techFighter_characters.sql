BEGIN;

TRUNCATE
techFighter_characters
RESTART IDENTITY CASCADE;

INSERT INTO techFighter_characters(fighter_name, hometown, height, fighter_weight, wins, losses)
VALUES
('Fighter 1', 'Los Angeles, CA', 182, 185, null, null),
('Fighter 2', 'New York, NY', 163, 145, 22, 3),
('Fighter 3', 'London, England', 175, 200, 30, 1),
('Fighter 4', 'Dallax, TX', 190, 225, 10, 0),
('Fighter 5', 'Miami, FL', 170, 185, 15, 12),
('Fighter 6', 'Mexico City, Mexico', 168, 135, 43, 0),
('Fighter 7', 'Rio De Janiero, Brazil', 177, 165, 5, 1),
('Fighter 8', 'Kingston, Jamaica', 170, 175, 12, 5),
('Fighter 9', 'Hong Kong, China', 165, 155, 22, 0),
('Fighter 10', 'Bangkok, Thailand', 169, 145, 97, 19);

COMMIT;