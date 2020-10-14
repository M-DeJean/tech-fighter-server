require('dotenv').config()
const express = require('express')
const morgan = require('morgan')
const cors = require('cors')
const helmet = require('helmet')
const { NODE_ENV } = require('./config')
const fightingStylesRouter = require('./fighting-styles/fighting-styles-router')
const fightersRouter = require('./fighters/fighters-router')
const attacksRouter = require('./attacks/attacks-router')

const app = express()

const morganOption = (NODE_ENV === 'production')
  ? 'tiny'
  : 'common';

app.use(cors())
app.use(morgan(morganOption))
app.use(helmet())

app.use('/api/fighting-styles', fightingStylesRouter)
app.use('/api/fighters', fightersRouter)
app.use('/api/attacks', attacksRouter)
app.get('/', (req, res) => {
  res.send('Hello, world!')
})

app.use(function errorHandler(error, req, res, next) {
  let response
  if (NODE_ENV === 'production') {
    response = { error: { message: 'server error' } }
  } else {
    console.error(error)
    response = { message: error.message, error }
  }
  res.status(500).json(response)
})

module.exports = app