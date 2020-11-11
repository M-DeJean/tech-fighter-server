const app = require('../src/app')
const knex = require('knex')
const helpers = require('./test-helpers')
describe('Fighters Endpoints', function () {
    let db
    const fighters = helpers.makeFightersArray()
    const styles = helpers.makeStylesArray()
    before('make knex instance', () => {
        db = knex({
            client: 'pg',
            connection: process.env.TEST_DATABASE_URL,
        })
        app.set('db', db)
    })

    after('disconnect from db', () => db.destroy())

    before('cleanup', () => helpers.cleanTables(db))

    beforeEach('seed data', () => helpers.seedFighters(db, styles, fighters))

    afterEach('cleanup', () => helpers.cleanTables(db))
    describe(`GET /api/fighters`, () => {
        it('responds with 200 and an array of fighters', () => {
            return supertest(app)
                .get('/api/fighters')
                .expect(200)
                .expect(res => {
                    expect(res.body[0].fighter_name).to.eql(fighters[0].fighter_name)
                })
        })
    })
    describe(`GET /api/fighters/:fighter_id`, () => {
        it('responds with 200 and the specified fighter', () => {
            const fighterId = 2
            return supertest(app)
                .get(`/api/fighters/${fighterId}`)
                .expect(200)
                .expect(res => {
                    expect(res.body.fighter_name).to.eql(fighters[1].fighter_name)
                })
        })
    })
    describe(`GET /api/random/:fighter_id`, () => {
        it('responds with 200 and any fighter not matching the id', () => {
            const fighterId = 1
            return supertest(app)
                .get(`/api/fighters/random/${fighterId}`)
                .expect(200)
                .expect(res => {
                    expect(res.body.fighter_name).to.eql(fighters[1].fighter_name)
                })
        })
    })

})
