const FightersService = {
    getAllFighters(db) {
        return db
            .from('fighters AS fight')
            .select('*')
    },
    getRandomFighter(db, fightId) {
        return db
            .from('fighters AS fight')
            .select('*')
            .orderBy(db.raw('RANDOM()'))
            .whereNot('id', fightId)
            .first()

    },
    getById(db, id) {
        return this.getAllFighters(db)
            .where('fight.id', id)
            .first()
    },
    updateFighter(db, id, data) {
        return db('fighters')
        .where('fight.id', id)
        .update(data)
    }
}

module.exports = FightersService