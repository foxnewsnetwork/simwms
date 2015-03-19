`import Ember from 'ember'`

TicketRoute = Ember.Route.extend
  model: (ticket_id: id) ->
    @store.find "weighticket", id

`export default TicketRoute`
