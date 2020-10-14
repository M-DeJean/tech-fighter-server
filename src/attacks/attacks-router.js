const express = require('express')
const AttacksService = require('./attacks-service')

const attacksRouter = express.Router()

attacksRouter
    .route('/')
    .get((req, res, next) => {
        AttacksService.getAllAttacks(req.app.get('db'))
            .then(attacks => {
                res.json(attacks)
            })
            .catch(next)
    })

attacksRouter
    .route('/:attack_id')
    .all(checkAttackExists)
    .get((req, res) => {
        res.json(res.attack)
    })

    async function checkAttackExists(req, res, next) {
        try {
          const attack = await AttacksService.getById(
            req.app.get('db'),
            req.params.attack_id
          );
          if (!attack)
            return res.status(404).json({
              error: `Attack doesn't exist`,
            });
      
          res.attack = attack;
          next();
        } catch (error) {
          next(error);
        }
      }

module.exports = attacksRouter