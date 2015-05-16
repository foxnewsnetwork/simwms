`import ControllerPen from 'apiv1/utils/controller-pen'`

# Takes two parameters: container and app
initialize = (ctn, app) ->
  app.register "pen:controllers", ControllerPen
  app.inject "route:application", "controllerPen", "pen:controllers"

ControllerPenInitializer =
  name: 'controller-pen'
  initialize: initialize

`export {initialize}`
`export default ControllerPenInitializer`
