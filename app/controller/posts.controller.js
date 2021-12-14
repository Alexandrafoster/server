const db = require('../config/db.config.js');
const Posts = db.posts;
const Op = db.Sequelize.Op;

var jwt = require('jsonwebtoken');
const imgurl = process.env.SERVER_URL+'/post/';

exports.findAll = (req, res) => {
	Posts.findAll({
		attributes: ['id', 'thumbnail', 'thumbcaption', 'headerimage', 'headerheading', 'headercontent', 'bodyheading', 'bodycontent', 'bodyheading2', 
		'bodycontent2', 'createdAt'],
	}).then(post => {
		res.json(post);
	});
}

exports.findOne = function (req, res) {
	Posts.findOne({
		where: {
			id: req.params.id,
		},
	})
		.then(post => {
			if (post) {
				res.json(post)
			} else {
				res.send('Post Does not exist')
			}
		})
};

exports.postsCreate = (req, res) => {
	// Save User to Database
	// console.log(req.body);
	// const {fname, email, password} = req.body;
	Posts.create({
		thumbnail: !req.files[0] ? 'thumbnail.jpg' : req.files[0].filename,
		headerimage: !req.files[1] ? 'headerimage.jpg' : req.files[1].filename,
		thumbcaption: req.body.thumbcaption,
		headerheading: req.body.headerheading,
		headercontent: req.body.headercontent,
		bodyheading: req.body.bodyheading,
		bodycontent: req.body.bodycontent,
		bodyheading2: req.body.bodyheading2,
		bodycontent2: req.body.bodycontent2,
	}).then(posts => {
				return res.send({ message: 'Post Saved successfully!' });
			}).catch(err => {
			res.status(500).send({ reason: err.message });
	});
}


exports.update = function (req, res) {
	Posts.update({
		fname: req.body.fname,
		lname: req.body.lname,
		
	}, {
		where: {
			id: req.body.id
		}
	})
	.then(() => {
		res.send({ message: 'Update successfully!' });
		// console.log('Success');
		// res.json({ status: 'Customer Deleted!' })
	})
	.catch((err) => {
		res.status(500).send({ reason: err.message });
		// console.log('Error');
		// res.send('error: ' + err)
	})
};


exports.delete = function (req, res) {
	Posts.destroy({
		where: {
			id: req.params.id
		}
	}).then(() => {
		res.json({ message: 'Post Deleted Succsessfuly' })
	}).catch(err => {
		res.status(500).send({reason: err.message});
	})
}
