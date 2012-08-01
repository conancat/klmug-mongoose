# Find operation
# http://mongoosejs.com/docs/finding-documents.html

# Require Model
{Song} = require './models'


# Normal find operation
# Model.find(query, callback)

Song.find {}, (err, result) ->
  if err 
    return console.log 'QUERY error', err

  console.log result
  process.exit()


# Find specific item
# Model.find(query, callback)
#
# Song.find artist: 'Lady Gaga', (err, result) ->
#   if err 
#     return console.log 'QUERY error', err

#   console.log result
#   process.exit()      

# Find with options
# Model.find(query, fields, options, callback)
#

# query = 
#   artist: 'Lady Gaga'

# fields = 
#   artist: 1
#   title: 1
#   _id: 0

# options = 
#   sort: 
#     title: 1

# Song.find query, fields, options, (err, result) ->
#   if err 
#     return console.log 'QUERY error', err

#   console.log result
#   process.exit()


# Find one item
# Model.findOne(query, [fields, options], callback)
#
# Song.findOne artist: 'Coldplay', (err, result) ->
#   if err
#     return console.log 'Query error', err

#   console.log result
#   process.exit()



