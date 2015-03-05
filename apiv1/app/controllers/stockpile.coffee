`import Ember from 'ember'`

StockpileController = Ember.Controller.extend
  goods: [Ember.Object.create(id: 4, rowName: 3, colName: "d", hasGoods: true)]

`export default StockpileController`
