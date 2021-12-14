var express = require('express');
var cors = require('cors');

 module.exports = function(app) {

    var post = require('../controller/posts.controller.js');
    const upload = require('../config/post-upload.config.js');

    app.use(cors());
	app.use('/post', express.static('uploads/post'));
	app.use(function (req, res, next) {
		res.header("Access-Control-Allow-Origin", "*");
		res.header("Access-Control-Allow-Headers", "x-access-token, Origin, Content-Type, Accept");
		res.header('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS');
		next();
	});

    app.get('/api/post', post.findAll);

    app.get('/api/post/find/:id', post.findOne);

    app.put('/api/post/edit/:id', upload.any(), post.update);

    app.delete('/api/post/delete/:id', post.delete);

    app.post('/api/post/create', upload.any(), post.postsCreate);
}