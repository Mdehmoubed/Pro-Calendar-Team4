var sqlite3 = require('sqlite3').verbose();
var express = require('express');
var http = require('http');
var path = require("path");
var bodyParser = require('body-parser');
var helmet = require('helmet');
var rateLimit = require("express-rate-limit");

var app = express();
var server = http.createServer(app);

const limiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 minutes
  max: 100 // limit each IP to 100 requests per windowMs
});


var db = new sqlite3.Database('./chinook.db');


app.use(bodyParser.urlencoded({extended: false}));
app.use(express.static(path.join(__dirname,'./public')));
app.use(helmet());
app.use(limiter);


app.get('/', function(req,res){
    res.sendFile(path.join(__dirname,'ProCalendarLogin.html'));
  });


  // Insert
app.post('/add', function(req,res){
    db.serialize(()=>{
     db.run('INSERT INTO users(user_name, user_psw, first_name, last_name, email) VALUES(?,?,?,?,?)',
        [req.body.uname, req.body.psw, req.body.inputFirstName, req.body.inputLastName, req.body.inputEmail], 
        function(err) {
        if (err) {
          return console.log(err.message);
        }
        console.log("New user has been added");
        res.send("New user has been added into the database with ID = "+req.body.uname+ " and Name = "+req.body.inputFirstName + " "+ req.body.inputLastName);
      });
  });
  });

 server.listen(3000,function(){
     console.log("Server listening on port: 3000");
 });
