`import config from '../config/environment'`
`import Firebase from 'firebase'`
`import FirebaseAdapter from 'emberfire/adapters/firebase'`

LiveAdapter = FirebaseAdapter.extend
  firebase: new Firebase(config.firebase)

`export default LiveAdapter`
