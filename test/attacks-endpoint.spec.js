const app = require('../src/app')
const knex = require('knex')
const helpers = require('./test-helpers')
const supertest = require('supertest')
const { expect } = require('chai')

describe('Attacks Endpoints', function () {
    let db
    const attacks = helpers.makeAttacksArray()
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

    beforeEach('seed data', () => helpers.seedAttacks(db, styles, attacks))

    afterEach('cleanup', () => helpers.cleanTables(db))
    describe('GET /api/attacks', () => {
        it('responds with 200 and an array of attacks', () => {
            return supertest(app)
                .get('/api/attacks')
                .expect(200)
                .expect(res => {
                    expect(res.body[0].attack_name).to.eql(attacks[0].attack_name)
                })
        })
    })
    describe('GET /api/attacks/:attack_id', () => {
        it('responds with 200 the specified attack', () => {
            const attackId = 3
            return supertest(app)
                .get(`/api/attacks/${attackId}`)
                .expect(200)
                .expect(res => {
                    expect(res.body.attack_name).to.eql(attacks[2].attack_name)
                })
        })
    })
})