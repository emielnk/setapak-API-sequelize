'use strict';

var Sequelize = require('sequelize');
var config = require('../config/config')
var db = require('../services/database')


var modelDef = {
    user_id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    username: {
        type: Sequelize.STRING,
        allowNull: false,
        unique: true,
        validate: {
            len: {
                args: [5,],
                msg: 'Username must be 5 char'
            } 
        }
    },
    name: {
        type: Sequelize.STRING,
        allowNull: false,
        validate: {
            len: {
                args: [5, 50],
                msg: 'Must between 5 and 50 characters'
            }
        }
    },
    password: {
        type: Sequelize.STRING,
        allowNull: false,
        validate: {
            len: {
              args: [8,],
              msg: 'Password must be minimal 8 characters'
            }
          }
    },
    email: {
        type: Sequelize.STRING,
        allowNull: false,
        validate: {
            isEmail: {
                msg: 'Must be email format'
            }
        }
    },
    no_telp: {
        type: Sequelize.NUMERIC,
        allowNull: true,
        validate: {
            isNumeric: {
                msg: 'must be a number'
            }
        }
    },
    gender: {
        type: Sequelize.ENUM('male','female'),
        allowNull: false,
    },
    last_login: {
        type: Sequelize.TIME
    },
    picture: {
        type: Sequelize.STRING
    },
    role: {
        type: Sequelize.ENUM('1', '2'),
        allowNull: false
        // defaultValue: config.userRoles.wisatawan
    }
};


var UserModels = db.define('User', modelDef);

module.exports = UserModels