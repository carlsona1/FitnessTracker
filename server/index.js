const express = require('express')
require('dotenv').config();
const path = require('path');

const users = require('./controllers/users');
const workouts = require('./controllers/workouts');
const comments = require('./controllers/comments');
const reactions = require('./controllers/reactions');
const followers = require('./controllers/followers');
const app = express()
const port = process.env.PORT || 3000;

console.log(process.env.BEST_CLASS);

//  Middleware
app.use(express.json());
app.use(express.static(__dirname + '/../docs/'));


//  Authentication
app.use(function(req, res, next) {
  const arr = (req.headers.authorization || "").split(" ");
  if(arr.length > 1 && arr[1] != null){
      req.userId = +arr[1];
  }
  next();
});


//  API
app.get('/', (req, res, next) => {
  res.send('Hello Hudson Valley! You requested ' + req.url)
})
app.use('/users', users);
app.use('/workouts', workouts);
app.use('/comments', comments);
app.use('/reactions', reactions);
app.use('/followers', followers);

app.get('*', (req, res, next) => {
  const filename = path.join(__dirname, '/../docs/index.html');
  console.log(filename);
  res.sendFile( filename );
})


app.use( (err, req, res, next) =>{
    console.log(err);
    res.status(err.status || 500).send( { message: err.message } )
} )
app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})