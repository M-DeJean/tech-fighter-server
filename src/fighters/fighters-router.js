const express = require('express')
const FightersService = require('./fighters-service')

const jsonBodyParser = express.json();

const FightersRouter = express.Router()

FightersRouter
    .route('/')
    .get((req, res, next) => {
        FightersService.getAllFighters(req.app.get('db'))
            .then(fighters => {
                res.json(fighters)
            })
            .catch(next)
    })

FightersRouter
    .route('/:fighter_id')
    .all(checkFighterExists)
    .get((req, res) => {
        res.json(res.fighter)
    })
    .patch(jsonBodyParser,(req, res) => {
        const data = { }
        if(req.query.win == 'true') {
            data.wins = res.fighter.wins + 1
        } else {
            data.losses = res.fighter.losses + 1
        }
        FightersService.updateFighter(req.app.get('db'), req.params.fighter_id)
    })

FightersRouter
    .route('/random/:fighter_id')
    .get((req, res, next) => {
        FightersService.getRandomFighter(req.app.get('db'), req.params.fighter_id)
            .then(fighter => {
                res.json(fighter)
            })
            .catch(next)
    })

async function checkFighterExists(req, res, next) {
    try {
        const fighter = await FightersService.getById(
            req.app.get('db'),
            req.params.fighter_id
        );
        if (!fighter)
            return res.status(404).json({
                error: `Fighter doesn't exist`,
            });

        res.fighter = fighter;
        next();
    } catch (error) {
        next(error);
    }
}

module.exports = FightersRouter