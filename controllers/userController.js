var Sequelize = require('sequelize')
var config = require('../config/config')
var User = require('../models/User')
// var models = require('../models/index')

var userController = {}

userController.GetAllUser = function(req, res) {
    User.findAll().then(users => {
        console.log(users)
      })
}

module.exports = userController