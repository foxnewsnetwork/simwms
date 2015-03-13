`import SocketBaseAdapter from './socket-base'`

TruckAdapter = SocketBaseAdapter.extend
  host: "http://localhost:4201"
  namespace: "apiv2"
  io: io

`export default TruckAdapter`
