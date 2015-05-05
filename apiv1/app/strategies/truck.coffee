`import DSC from 'ember-data-complex'`

collisonMsg = (truck) -> """
Your strategy asked me to archive on destruction, but the field you set aside for archiving has already been filled.
The offending object in the slot is: #{truck} This is likely an oversight on your part. 
If you intend on viewing your archived objects, you should directly use the archiving model instead of the complex.
"""
missMsg = """
You expected me to archive your object, but the object I'm to copy attributes from is null.
"""

assertNonexistence = (railTruck) ->
  throw new Error collisonMsg(railTruck) if Ember.isPresent railTruck
assertExistence = (fireTruck) ->
  throw new Error missMsg if Ember.isBlank fireTruck

# Employs a DestructiveArchive tactic
# Throws an error if your archive is already filled
TruckStrategy = DSC.Strategy.extend DSC.CreativeDelegationTactic,
  beforeDestroy: (master) ->
    master.get("rail")
    .then (railTruck) ->
      assertNonexistence railTruck
      master.get "fire"
    .then (fireTruck) =>
      assertExistence fireTruck
      @store.createRecord "rail/truck", DSC.getAttributes fireTruck
      .save()

  
`export default TruckStrategy`