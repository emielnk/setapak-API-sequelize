var config = require('../config/config')
var router = require('express').Router()

var userController = require('../controllers/userController')

var APIRoutes = function () {
    router.get('/users', userController.GetAllUser)
    return router
};

module.exports = APIRoutes;