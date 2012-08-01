# MongoDB in NodeJS with Mongoose

MongoDB and NodeJS? Match made in heaven!

Resources: 

* NodeJS: http://nodejs.org/
* MongooseJS: http://mongoosejs.com/
* CoffeeScript: http://coffeescript.org/

## What we're covering

* How to connect to the DB and create schemas (`models.coffee`)
* How to create new documents (`create.coffee`)
* How to use the Model.find() function, similar to the MongoDB shell commands (`find.coffee`)
* How to create and use the Query object by doing `query = Model.find({})`, then specifying filters and options (`query.coffee`)
* How to use the Query.stream() function for streaming data from MongoDB (`stream.coffee`)
* How to remove documents (`remove.coffee`)

## How To Play

### Mock Data
Included here is some mock data under the songs.json. To import the data into your database, do: 

```
mongoimport -d test -c songs --type json songs.json
```

### Setting up NodeJS and Mongoose

To start playing around with the files here, make sure you have [NodeJS](http://nodejs.org/) installed. 

After that you need to install the required packages. (Which is just Mongoose, really)

Clone this repo, then when you're inside, do:

```
npm install
```

Also, you'll need CoffeeScript to run the .coffee files. To install CoffeeScript, do: 

```
npm install coffee-script -g
```

Once you're done, run the files by doing: 

```
coffee create
coffee find
coffee query
coffee stream
coffee remove
```

Have fun!