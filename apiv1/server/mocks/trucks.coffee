express = require 'express'
bodyParser = require 'body-parser'
router = express.Router()

router.use bodyParser.json()
router.use bodyParser.urlencoded extended: true

trucks = []

makeTruck = (params) ->
  params.id = trucks.length
  params

findById = (xs, id) ->
  for x in xs
    if x.id is id
      return x
  return

router.get '/', (req, res) ->
  res.send trucks: trucks.filter (truck) -> not truck.departed_at?

router.post '/', (req, res) ->
  truck = makeTruck req.body.truck
  trucks.push truck
  res.send truck: truck
  res.status(201).end()

router.get '/:id', (req, res) ->
  res.send truck: findById(trucks, req.params.id)

router.put '/:id', (req, res) ->
  res.send truck: findById(trucks, req.params.id)

router.delete '/:id', (req, res) ->
  res.status(204).end()

module.exports = (app) ->
  app.use '/api/trucks', router