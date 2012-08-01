# #############################
# Inserting a new document
# #############################

{Song} = require './models'

song = new Song()

# Single data
song.title = 'London bridge is falling down'
song.artist = 'Mark Smalley'
song.duration = 100
song.genre = 'children'
song.videoId = '12345'
song.cover = "http://graph.facebook.com/mark.smalley/picture"
song.bigCover = "http://graph.facebook.com/mark.smalley/picture?type=large"

# Array
song.tags.push 
  name: 'children'
  count: 10

song.tags.push
  name: 'chicken'
  count: 30

song.tags.push 'string'
song.tags.push 1000


song.save (err, model) ->
  if err 
    return console.log 'SAVE error', err

  console.log 'SAVE done'
  console.log model
  process.exit()


