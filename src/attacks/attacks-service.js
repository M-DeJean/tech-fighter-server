const AttacksService = {
    getAllAttacks(db) {
        return db
            .from( 'attacks AS atk')
            .select('*')
    },
    getById(db, id) {
        return this.getAllAttacks(db)
        .where('atk.id', id)
        .first()
    }
}

module.exports = AttacksService