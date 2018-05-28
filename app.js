var Sequelize = require('sequelize'),
    express = require('express'),
    bodyParser = require('body-parser'),
    morgan = require('morgan'),
    passport = require('passport'),
    jwt = require('jsonwebtoken');
    exxpress = require('express')
    cors = require('cors')

var api = require('./routes/api')

var app = express();

// var hookJWTStrategy = require('./services/passportStrategy');

app.use(morgan('dev'))

app.use(passport.initialize())

app.use(cors())

// hookJWTStrategy(passport);

app.use(express.static(__dirname + '/interface'));

app.use('/api', api());

app.get('*', function(req, res) {
    res.sendFile(path.join(__dirname + '/interface/index.html'));
});

app.listen(3000, function(){
    console.log('Server running at port 3000: http://127.0.0.1:3000')
})
// sequelize.authenticate().then(() => {
//     console.log("asik bisa");
// }).catch(err => {
//     console.error('lah gabisa')
// })

// User.findAll({}).then(users => {
//     console.log(users)
// })


