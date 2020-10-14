BEGIN;

TRUNCATE
fighting_styles,
fighters,
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

INSERT INTO fighters(fighter_name, hometown, height, fighter_weight, wins, losses, styleId,  attack, defense, speed , health, stamina)
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
    ('Jab', 7, 11, 1),
    ('Combo', 21, 32, 1),
    ('Counter Punch', 10, 15, 1),
    ('Haymaker', 30, 45, 1),
    ('Left Hook', 12, 18, 2),
    ('Elbow', 25, 38, 2),
    ('Leg Kick', 30, 45, 2),
    ('Flying Knee', 45, 68, 2),
    ('Straight Punch', 11, 17, 3),
    ('Side Kick', 20, 30,3),
    ('Jump Kick', 28, 43, 3),
    ('Dragon Punch', 50, 75, 3),
    ('Body Kick', 12, 18, 4),
    ('Takedown', 20, 15, 4),
    ('Rear Naked Choke', 30, 45, 4),
    ('SuperMan Punch', 45, 68, 4),
    ('Double Leg Takedown', 12, 18, 5),
    ('Suplex', 20, 30, 5),
    ('Leg Lock', 30, 45, 5),
    ('Mega Slam', 40, 60, 5),
    ('Single Leg Takedown', 10, 15, 6),
    ('Armbar', 30, 45, 6),
    ('Kimura', 37, 56, 6),
    ('Triangle Choke', 55, 83, 6);


COMMIT;