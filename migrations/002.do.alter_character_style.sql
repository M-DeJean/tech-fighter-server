CREATE TYPE fighting_style AS ENUM (
    'Boxing',
    'Kickboxing',
    'Kung-Fu',
    'Mixed Martial Arts',
    'Wrestling',
    'Brazilian Jiu-Jitsu'
);

ALTER TABLE techFighter_characters
    ADD COLUMN
        style fighting_style;