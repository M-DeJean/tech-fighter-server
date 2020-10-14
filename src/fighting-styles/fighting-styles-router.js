const express = require('express')
const FightingStylesService = require('./fighting-styles-service')

const fightingStylesRouter = express.Router()

fightingStylesRouter
    .route('/')
    .get((req, res, next) => {
        FightingStylesService.getAllFightingStyles(req.app.get('db'))
            .then(styles => {
                res.json(styles)
            })
            .catch(next)
    })

fightingStylesRouter
    .route('/:fighting_style_id')
    .all(checkFightingStyleExists)
    .get((req, res) => {
        FightingStylesService.getAllFightingStyleAttacks(req.app.get('db'), res.fightingStyle.id)
          .then(attacks => {
            res.json({...res.fightingStyle, attacks})
          })
    })

    async function checkFightingStyleExists(req, res, next) {
        try {
          const fightingStyle = await FightingStylesService.getById(
            req.app.get('db'),
            req.params.fighting_style_id
          );
          if (!fightingStylesRouter)
            return res.status(404).json({
              error: `Fighting Style doesn't exist`,
            });
      
          res.fightingStyle = fightingStyle;
          next();
        } catch (error) {
          next(error);
        }
      }

module.exports = fightingStylesRouter