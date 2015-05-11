`import Ember from 'ember'`
`import DSC from 'ember-data-complex'`
`import DS from 'ember-data'`
`import APM from '../utils/async-property-macros'`

Batch = DSC.ModelComplex.extend
  appointmentId: DS.attr "string"
  warehouseId: DS.attr "string"
  weighticketId: DS.attr "string"
  entryDockId: DS.attr "string"
  exitDockId: DS.attr "string"
  permalink: DS.attr "string"
  description: DS.attr "string"
  quantity: DS.attr "string"
  createdAt: DS.attr "date"

  appointment: DSC.belongsTo "appointment", foreignKey: "appointmentId"
  weighticket: DSC.belongsTo "weighticket", foreignKey: "weighticketId"
  warehouse: DSC.belongsTo "warehouse", foreignKey: "warehouseId"
  entryDock: DSC.belongsTo "barn", foreignKey: "entryDockId"
  exitDock: DSC.belongsTo "barn", foreignKey: "exitDockId"

  squareName: APM.alias "warehouse.squareName"
  entryTruckId: APM.alias "entryDock.fire.truckId"
`export default Batch`
