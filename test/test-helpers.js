function cleanTables(db) {
    return db.transaction(trx =>
        trx.raw(
            `TRUNCATE
          fighters,
          fighting_styles,
          attacks
        `
        )
            .then(() =>
                Promise.all([
                    trx.raw(`ALTER SEQUENCE fighters_id_seq minvalue 0 START WITH 1`),
                    trx.raw(`ALTER SEQUENCE fighting_styles_id_seq minvalue 0 START WITH 1`),
                    trx.raw(`ALTER SEQUENCE attacks_id_seq minvalue 0 START WITH 1`),
                    trx.raw(`SELECT setval('fighters_id_seq', 0)`),
                    trx.raw(`SELECT setval('fighting_styles_id_seq', 0)`),
                    trx.raw(`SELECT setval('attacks_id_seq', 0)`),
                ])
            )
    )
}

function makeFightersArray() {
    return [
        {
            id: 1,
            fighter_name: 'Lloyd Bryson',
            hometown: 'Detroit, Michigan',
            height: '182',
            fighter_weight: 200,
            wins: 6,
            losses: 3,
            styleid: 1,
            health: 120,
            stamina: 85,
            image: 'https://i.ibb.co/JHW3pC5/boxer.png'
        },
        {
            id: 2,
            fighter_name: 'Samart',
            hometown: 'Bangkok, Thailand',
            height: '163',
            fighter_weight: 145,
            wins: 0,
            losses: 1,
            styleid: 2,
            health: 90,
            stamina: 125,
            image: 'https://i.ibb.co/cypPNhZ/Kickboxer.png'
        }
    ]
}

function makeStylesArray() {
    return [
        {
            id: 1,
            style_name: "Boxing"
        },
        {
            id: 2,
            style_name: "Muay_Thai"
        }
    ]
}

function makeAttacksArray() {
    return [
        {
            id: 1,
            attack_name: 'Jab',
            button: 'L',
            damage: 12,
            energy_cost: 18,
            styleid: 1
        },
        {
            id: 2,
            attack_name: 'Combo',
            button: 'M',
            damage: 28,
            energy_cost: 42,
            styleid: 1
        },
        {
            id: 3,
            attack_name: 'Detroit Haymaker',
            button: 'S',
            damage: 50,
            energy_cost: 75,
            styleid: 1
        }
    ]
}

function seedFighters(db, styles, fighters) {
    return db.into('fighting_styles').insert(styles)
        .then(() => {
            return db.into('fighters').insert(fighters)
        })
}

function seedAttacks(db, styles, attacks) {
    return db.into('fighting_styles').insert(styles)
        .then(() => {
            return db.into('attacks').insert(attacks)
        })
}

module.exports = {
    cleanTables,
    seedFighters,
    seedAttacks,
    makeFightersArray,
    makeStylesArray,
    makeFightersArray,
    makeAttacksArray
}