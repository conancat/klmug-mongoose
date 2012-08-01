# MongoDB in NodeJS with Mongoose

MongoDB and NodeJS? Match made in heaven!

Resources: 

* NodeJS: http://nodejs.org/
* MongooseJS: http://mongoosejs.com/
* CoffeeScript: http://coffeescript.org/

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
coffee find
coffee remove
coffee stream
...etc
```

Have fun!