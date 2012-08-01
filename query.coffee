# ######################################
# Query operation
# http://mongoosejs.com/docs/query.html
# ######################################

# Require model
{Song} = require './models'

# #######################
# Basic find operation
# #######################

query = Song.find {}

query.exec (err, result) ->
  if err 
    return console.log 'QUERY ERROR', err

  console.log result
  process.exit()

# #######################
# Fancy find operation
# #######################

# query = Song.find {}

# query.where 'artist', 'Adele'
# query.where 'genre', 'fresh'
# query.where('duration').gt(300)
# query.where('duration').lt(500)
# query.sort 'title', 1
# query.sort 'duration', 1

# query.select
#   artist: 1
#   title: 1
#   genre: 1
#   videoId: 1
#   _id: 0

# query.exec (err, result) ->
#   if err 
#     return console.log 'QUERY ERROR', err

#   console.log result
#   process.exit()

