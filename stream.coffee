# Query stream
# http://mongoosejs.com/docs/querystream.html

# Require model
{Song} = require './models'

# Fancy find operation
query = Song.find {}
query.sort 'artist', 1
query.exists 'artist'
query.where('artist').ne('-')
query.exists 'title'
query.limit 100
query.select
  artist: 1
  title: 1
  genre: 1
  videoId: 1
  _id: 0

stream = query.stream()

count = 0

stream.on 'data', (doc) ->
  count++
  console.log "Document count #{count}, #{doc.artist} - #{doc.title}"

stream.on 'error', (err) ->
  console.log 'STREAM ERROR', err
  process.exit()

stream.on 'close', ->
  console.log 'STREAM done'
  process.exit()

