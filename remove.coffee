# Removing a document

{Song} = require './models'

# # Batch remove 
# Song.remove artist: 'Mark Smalley', (err) ->
#   if err 
#     return console.log 'REMOVE ERROR', err

#   console.log 'REMOVE Success'
#   process.exit()

# Removing by each document
Song.find artist: 'Mark Smalley', (err, result) ->
  if err
    return console.log 'REMOVE find error', err

  console.log "REMOVE find documents found: #{result.length}"

  if result.length is 0 
    console.log 'REMOVE no documents found, exiting'
    process.exit()

  count = 0
  max = result.length

  remove = ->
    result[count].remove (err) ->
      if err 
        return console.log 'REMOVE error', err

      count++
      console.log "REMOVE done for doc #{count}"
      
      if count < max
        remove()
      else
        console.log 'REMOVE ALL done, awesomesauce!'
        process.exit()

  remove()
