var express = require('express');
var app = express();

app.get('/', function(req, res){
   res.send("Hello world!1");
});

app.listen(3000);