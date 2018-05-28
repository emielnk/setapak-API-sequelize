'use strict';


var Sequelize = require('sequelize')
var env = "development";
var config = require('../config/config.json')[env]
// var config2 = require('../config/config.json')[env]

const sequelize = new Sequelize(
    config.database,
    config.username,
    config.password, {
        host: "127.0.0.1",
        dialect: "mysql"
    }
);

module.exports = sequelize;

