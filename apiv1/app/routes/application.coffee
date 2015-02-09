`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
  disconnectModal: ->
    $("#modal-background").hide()
    @disconnectOutlet
      outlet: 'modal'
      parentView: 'application'

  actions:
    openModal: (modalName, model) ->
      console.log "attempting modal"
      $("#modal-background").show()
      @render "modals/#{modalName}",
        into: 'application'
        outlet: 'modal'
        model: model
    closeModal: ->
      @disconnectModal()
    willTransition: ->
      @disconnectModal()

`export default ApplicationRoute`
