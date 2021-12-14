var express = require('express');
var cors = require('cors');
const verifySignUp = require('./verifySignUp');
const authJwt = require('./verifyJwtToken');
const upload = require('../config/post-upload.config.js');

  

module.exports = function (app) {

	const controller = require('../controller/controller.js');
	
	app.use(cors());
	app.use('/post', express.static('uploads/post'));
	app.use(function (req, res, next) {
		res.header("Access-Control-Allow-Origin", "*");
		res.header("Access-Control-Allow-Headers", "x-access-token, Origin, Content-Type, Accept");
		res.header('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS');
		next();
	});
	
	
	app.post('/api/auth/signin', controller.adminsignin);

	app.get('/api/auth/email-activate/:token1', cors(), controller.activateAccount);
}