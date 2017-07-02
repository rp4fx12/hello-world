const express = require('express');
const app = express();
const functions = require('./basic-functions');

app.get('/', function (req, res) {
  res.send(functions.helloName('Rohan'));
})

app.listen(3000, function () {
  console.log('Example app listening on port 3000!')
})
