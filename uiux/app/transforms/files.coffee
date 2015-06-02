`import DS from 'ember-data'`
`import dataUriToJpgBlob from '../utils/data-uri-to-jpg-blob'`

FilesTransform = DS.Transform.extend
  deserialize: (serialized) ->
    throw new Error "We should never have to deserialize files from the server"

  serialize: (deserialized=[]) -> 
    deserialized.map dataUriToJpgBlob
    

`export default FilesTransform`
