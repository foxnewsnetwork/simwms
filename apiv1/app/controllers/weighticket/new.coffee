`import Ember from 'ember'`

WeighticketNewController = Ember.Controller.extend
  prepareTruck: (weighticket) ->
    if weighticket.get("targetDock")?
      speed: 1
      status: "ok"
      origintype: "scale"
      origination: weighticket.get("issuerId")
      destination: "barn"
      destinytype: weighticket.get("targetDock")
    else
      speed: 0
      status: "waiting for dock"
      origintype: "scale"
      origination: weighticket.get "issuerId"

  actions:
    newWeighticket: (params) ->
      @store.createRecord("weighticket", params).save()
      .then (weighticket) =>
        @store.createRecord "truck", @prepareTruck weighticket
      .then (truck) ->
        truck.save()

`export default WeighticketNewController`
