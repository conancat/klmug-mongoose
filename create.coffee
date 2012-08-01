# Inserting a new document

{Song} = require './models'

song = new Song()

song.title = 'London bridge is falling down'
song.artist = 'Mark Smalley'
song.duration = 100
song.genre = 'children'
song.videoId = '12345'

song.save (err, model) ->
  if err 
    return console.log 'SAVE error', err

  console.log 'SAVE done'
  console.log model
  process.exit()


