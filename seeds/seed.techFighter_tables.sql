BEGIN;

TRUNCATE
fighting_styles,
characters,
attacks
RESTART IDENTITY CASCADE;

INSERT INTO fighting_styles(style_name)
VALUES
    ('Boxing'),
    ('Kickboxing'),
    ('Kung-Fu'),
    ('Mixed Martial Arts'),
    ('Wrestling'),
    ('Brazilian Jiu-Jitsu');

INSERT INTO characters(fighter_name, hometown, height, fighter_weight, wins, losses, styleId,  attack, defense, speed , health, stamina)
VALUES
    ('Fighter 1', 'Los Angeles, CA', 182, 185, 22, 0, 1, 20, 50, 50, 100, 100),
    ('Fighter 2', 'New York, NY', 163, 145, 22, 3, 2, 20, 50, 50, 100, 125),
    ('Fighter 3', 'London, England', 175, 200, 30, 1, 3, 20, 50, 50, 100, 90),
    ('Fighter 4', 'Dallax, TX', 190, 225, 10, 0, 3, 20, 50, 50, 100, 110),
    ('Fighter 5', 'Miami, FL', 170, 185, 15, 12, 4, 20, 50, 50, 100, 100),
    ('Fighter 6', 'Mexico City, Mexico', 168, 135, 43, 0, 1, 20, 50, 50, 100, 125),
    ('Fighter 7', 'Rio De Janiero, Brazil', 177, 165, 5, 1, 6, 20, 50, 50, 100, 100),
    ('Fighter 8', 'Kingston, Jamaica', 170, 175, 12, 5, 2, 20, 50, 50, 100, 110),
    ('Fighter 9', 'Hong Kong, China', 165, 155, 22, 0, 3, 20, 50, 50, 100, 90),
    ('Fighter 10', 'Bangkok, Thailand', 169, 145, 97, 19, 2, 20, 50, 50, 100, 100);

INSERT INTO attacks(attack_name, damage, energy_cost, styleId)
VALUES
    ('Attack 1', 20, 15, 1),
    ('Attack 2', 20, 15, 2),
    ('Attack 3', 20, 15, 5),
    ('Attack 4', 20, 15, 6),
    ('Attack 5', 20, 15, 3),
    ('Attack 6', 20, 15, 1),
    ('Attack 7', 20, 15, 4),
    ('Attack 8', 20, 15, 1),
    ('Attack 9', 20, 15, 2),
    ('Attack 10', 20, 15, 3);


COMMIT;