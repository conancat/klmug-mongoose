# #############################
# Defining models
# http://mongoosejs.com/docs/model-definition.html
# #############################

# Module requires
mongoose = require "mongoose"
Schema = mongoose.Schema

# Connect to DB
mongoose.connect "mongodb://localhost/test"
console.log 'MONGOOSE db connected'

# Setup schema
SongSchema = new Schema 
  videoId: {type: String, index: true}
  genre: String
  title: String
  artist: String
  cover: String
  bigCover: String
  duration: Number
  source: String
  country: String
  createdAt: {type: Date, default: Date.now}
  artistFbId: String
  tags: [String]

# Create model
Song = mongoose.model 'Song', SongSchema

# Export model
module.exports = 
  Song: Song

