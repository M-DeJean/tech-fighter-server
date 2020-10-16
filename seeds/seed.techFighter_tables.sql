BEGIN;

TRUNCATE
fighting_styles,
fighters,
attacks
RESTART IDENTITY CASCADE;

INSERT INTO fighting_styles(style_name)
VALUES
    ('Boxing'),
    ('Muay Thai'),
    ('Kung-Fu'),
    ('Mixed Martial Arts'),
    ('Wrestling'),
    ('Brazilian Jiu-Jitsu');

INSERT INTO fighters(fighter_name, hometown, height, fighter_weight, wins, losses, styleId, health, stamina, image)
VALUES
    ('Lloyd Bryson', 'Detroit, Michigan', 182, 185, 0, 0, 1, 120, 85, 'https://i.ibb.co/JHW3pC5/boxer.png'),
    ('Samart', 'Bangkok, Thailand', 163, 145, 0, 0, 2, 90, 125, 'https://i.ibb.co/cypPNhZ/Kickboxer.png'),
    ('Hanzo', 'Okinawa, Japan', 175, 200, 0, 0, 3, 100, 100, 'https://i.ibb.co/KyJ3V8N/kung-fu.png'),
    ('Paul Falcon', 'Dallax, Texas', 190, 225, 0, 0, 4, 100, 100, 'https://i.ibb.co/MnJNqmZ/fighter2.png'),
    ('Flex Leuger', 'Moscow, Russia', 250, 185, 0, 0, 5, 120, 85, 'https://i.ibb.co/3Wmscs7/wrestler.png'),
    ('Doctor Raja', 'Bhopal, India', 168, 135, 0, 0, 6, 90, 125, 'https://i.ibb.co/x3nNWNN/BJJ.png');

INSERT INTO attacks(attack_name, button, damage, energy_cost, styleId)
VALUES
    ('Jab', 'L', 12, 18, 1),
    ('Combo', 'M', 28, 42, 1),
    ('Detroit Haymaker', 'S', 50, 75, 1),
    ('Defend', 'D', 0, 0, 1),
    ('Leg Kick', 'L', 15, 23, 2),
    ('Elbow', 'M', 32, 48, 2),
    ('Jaguar Knee', 'S', 55, 82, 2),
    ('Defend', 'D', 0, 0, 2),
    ('Side Kick', 'L', 18, 27,3),
    ('Jump Kick', 'M', 30, 45, 3),
    ('Dragon Punch', 'S', 40, 60, 3),
    ('Defend', 'D',  0, 0, 3),
    ('Body Kick', 'L', 12, 18, 4),
    ('Rear Naked Choke', 'M', 30, 45, 4),
    ('SuperMan Punch', 'S', 45, 68, 4),
    ('Defend', 'D', 0, 0, 4),
    ('Takedown', 'L', 20, 30, 5),
    ('Suplex', 'M', 29, 44, 5),
    ('Mega Slam', 'S', 60, 90, 5),
    ('Defend', 'D', 0, 0, 5),
    ('Sweep', 'L', 14, 21, 6),
    ('Heel Hook', 'M', 37, 56, 6),
    ('Triangle Choke', 'S', 55, 83, 6),
    ('Defend', 'D', 0, 0, 6);


COMMIT;