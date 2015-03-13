`import config from '../config/environment'`
`import Firebase from 'firebase'`
`import FirebaseAdapter from 'emberfire/adapters/firebase'`

TruckAdapter = FirebaseAdapter.extend
  firebase: new Firebase(config.firebase)

`export default TruckAdapter`
