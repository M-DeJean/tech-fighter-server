const app = require('../src/app')
const knex = require('knex')
const helpers = require('./test-helpers')
const supertest = require('supertest')
const { expect } = require('chai')

describe('Fighting Styles Endpoints', function () {
    let db
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

    beforeEach('seed data', () => helpers.seedAttacks(db, styles))

    afterEach('cleanup', () => helpers.cleanTables(db))

    describe('GET /api/fighting-styles', () => {
        it('responds with 200 and an array of fighting styles', () => {
            return supertest(app)
                .get('/api/fighting-styles')
                .expect(200)
                .expect(res => {
                    expect(res.body[0].style_name).to.eql(styles[0].style_name)
                })
        })
    })
    describe('GET /api/fighting-styles/:fighting_style_id', () => {
        it('responds with 200 and the specified fighting style', () => {
            const styleId = 2
            return supertest(app)
                .get(`/api/fighting-styles/${styleId}`)
                .expect(200)
                .expect(res => {
                    expect(res.body.style_name).to.eql(styles[1].style_name)
                })
        })
    })
})