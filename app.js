
const express = require('express')
const app = express()
const port = 8080

const path = require('path');


// sendFile will go here
app.get('/', function(req, res) {
  res.sendFile(path.join(__dirname, '/index.html'));
});


app.listen(port, () => console.log(`The app listening at http://localhost:${port}`))
