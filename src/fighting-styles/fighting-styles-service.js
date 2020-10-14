const xss = require('xss')

const FightingStylesService = {
    getAllFightingStyles(db) {
        return db
            .from('fighting_styles AS style')
            .select(
                'style.id',
                'style.style_name'
            )
    },
    getById(db, id) {
        return this.getAllFightingStyles(db)
            .where('style.id', id)
            .first()
    },
    getAllFightingStyleAttacks(db, id) {
        return db
            .from('attacks AS atk')
            .where('styleid', id)
    }
}

module.exports = FightingStylesService