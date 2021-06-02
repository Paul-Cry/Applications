'use strict'

module.exports = (app) => {
    const usersController = require('../Controller/UsersController.js') 

    app
        .route('/applications/All')
        .get(usersController.getAllAppl)


    app
        .route('/applications/add')
        .post(usersController.AddAppl)
}