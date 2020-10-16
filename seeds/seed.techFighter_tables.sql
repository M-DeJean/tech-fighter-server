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
    ('Lloyd Springweather', 'Detroit, Michigan', 182, 185, 0, 0, 1, 120, 85, 'https://i.ibb.co/JHW3pC5/boxer.png'),
    ('Samart', 'Bangkok, Thailand', 163, 145, 0, 0, 2, 90, 125, 'https://i.ibb.co/cypPNhZ/Kickboxer.png'),
    ('Hanzo', 'Okinawa, Japan', 175, 200, 0, 0, 3, 100, 100, 'https://i.ibb.co/KyJ3V8N/kung-fu.png'),
    ('Paul Falcon', 'Dallax, Texas', 190, 225, 0, 0, 4, 100, 100, 'https://i.ibb.co/MnJNqmZ/fighter2.png'),
    ('Flex Leuger', 'Moscow, Russia', 250, 185, 0, 0, 5, 120, 85, 'https://i.ibb.co/3Wmscs7/wrestler.png'),
    ('Doctor Raja', 'Bhopal, India', 168, 135, 0, 0, 6, 90, 125, 'https://i.ibb.co/x3nNWNN/BJJ.png');

INSERT INTO attacks(attack_name, damage, energy_cost, styleId)
VALUES
    ('Jab', 7, 11, 1),
    ('Combo', 21, 32, 1),
    ('Detroit Haymaker', 40, 60, 1),
    ('Defend', 0, 0, 1),
    ('Elbow', 25, 38, 2),
    ('Leg Kick', 30, 45, 2),
    ('Jaguar Knee', 45, 68, 2),
    ('Defend', 0, 0, 2),
    ('Side Kick', 20, 30,3),
    ('Jump Kick', 28, 43, 3),
    ('Dragon Punch', 50, 75, 3),
    ('Defend', 0, 0, 3),
    ('Body Kick', 12, 18, 4),
    ('Rear Naked Choke', 30, 45, 4),
    ('SuperMan Punch', 45, 68, 4),
    ('Defend', 0, 0, 4),
    ('Takedown', 12, 18, 5),
    ('Suplex', 20, 30, 5),
    ('Mega Slam', 60, 90, 5),
    ('Defend', 0, 0, 5),
    ('Armbar', 30, 45, 6),
    ('Heel Hook', 37, 56, 6),
    ('Triangle Choke', 55, 83, 6),
    ('Defend', 0, 0, 6);


COMMIT;