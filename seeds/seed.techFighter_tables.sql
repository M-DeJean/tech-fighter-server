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

INSERT INTO fighters(fighter_name, hometown, height, fighter_weight, wins, losses, styleId, health, stamina, image)
VALUES
    ('Lloyd Springweather', 'Los Angeles, CA', 182, 185, 0, 0, 1, 120, 85, 'https://i.ibb.co/JHW3pC5/boxer.png'),
    ('Samart', 'Bangkok, Thailand', 163, 145, 0, 0, 2, 90, 125, 'https://i.ibb.co/cypPNhZ/Kickboxer.png'),
    ('Hanzo', 'Okinawa, Japan', 175, 200, 30, 1, 3, 100, 100, 'https://i.ibb.co/KyJ3V8N/kung-fu.png'),
    ('Paul Falcon', 'Dallax, Texas', 190, 225, 10, 0, 4, 100, 100, 'https://i.ibb.co/MnJNqmZ/fighter2.png'),
    ('Flex Leuger', 'Moscow, Russia', 250, 185, 0, 0, 5, 120, 85, 'https://i.ibb.co/3Wmscs7/wrestler.png'),
    ('Doctor Raja', 'Bhopal, India', 168, 135, 0, 0, 6, 90, 125, 'https://i.ibb.co/x3nNWNN/BJJ.png');

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