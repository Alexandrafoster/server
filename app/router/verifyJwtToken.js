const jwt = require('jsonwebtoken');
const config = require('../config/config.js');
const db = require('../config/db.config.js');
const Admin = db.admin;
const Manager = db.manager;
const Customer = db.customer;
const Rider = db.rider;

verifyToken = (req, res, next) => {
	let token = req.headers['x-access-token'];
  
	if (!token){
		return res.status(403).send({ 
			auth: false, message: 'No token provided.' 
		});
	}

	jwt.verify(token, config.secret, (err, decoded) => {
		if (err){
			return res.status(500).send({ 
					auth: false, 
					message: 'Fail to Authentication. Error -> ' + err 
				});
		}
		req.userId = decoded.id;
		next();
	});
}

isAdmin = (req, res, next) => {	
	Admin.findById(req.userId)
		.then(admin => {
			admin.getRoles().then(roles => {
				for(let i=0; i<roles.length; i++){
					// console.log(roles[i].name);
					if(roles[i].name.toUpperCase() === "ADMIN"){
						next();
						return;
					}
				}
				
				res.status(403).send("Require Admin Role!");
				return;
			})
		})
}

isAdmin = (req, res, next) => {	
	Manager.findById(req.userId)
		.then(manager => {
			manager.getRoles().then(roles => {
				for(let i=0; i<roles.length; i++){
					// console.log(roles[i].name);
					if(roles[i].name.toUpperCase() === "ADMIN"){
						next();
						return;
					}
				}
				
				res.status(403).send("Require Admin Role!");
				return;
			})
		})
}

isAdmin = (req, res, next) => {	
	Customer.findById(req.userId)
		.then(customer => {
			customer.getRoles().then(roles => {
				for(let i=0; i<roles.length; i++){
					// console.log(roles[i].name);
					if(roles[i].name.toUpperCase() === "ADMIN"){
						next();
						return;
					}
				}
				
				res.status(403).send("Require Admin Role!");
				return;
			})
		})
}

isAdmin = (req, res, next) => {	
	Rider.findById(req.userId)
		.then(rider => {
			rider.getRoles().then(roles => {
				for(let i=0; i<roles.length; i++){
					// console.log(roles[i].name);
					if(roles[i].name.toUpperCase() === "ADMIN"){
						next();
						return;
					}
				}
				
				res.status(403).send("Require Admin Role!");
				return;
			})
		})
}

isPmOrAdmin = (req, res, next) => {
	Admin.findById(req.userId)
		.then(admin => {
			admin.getRoles().then(roles => {
				for(let i=0; i<roles.length; i++){					
					if(roles[i].name.toUpperCase() === "MANAGER"){
						next();
						return;
					}
					
					if(roles[i].name.toUpperCase() === "ADMIN"){
						next();
						return;
					}
				}
				
				res.status(403).send("Require Manager or Admin Roles!");
			})
		})
}

isPmOrAdmin = (req, res, next) => {
	Manager.findById(req.userId)
		.then(manager => {
			manager.getRoles().then(roles => {
				for(let i=0; i<roles.length; i++){					
					if(roles[i].name.toUpperCase() === "MANAGER"){
						next();
						return;
					}
					
					if(roles[i].name.toUpperCase() === "ADMIN"){
						next();
						return;
					}
				}
				
				res.status(403).send("Require Manager or Admin Roles!");
			})
		})
}

isPmOrAdmin = (req, res, next) => {
	Customer.findById(req.userId)
		.then(customer => {
			customer.getRoles().then(roles => {
				for(let i=0; i<roles.length; i++){					
					if(roles[i].name.toUpperCase() === "MANAGER"){
						next();
						return;
					}
					
					if(roles[i].name.toUpperCase() === "ADMIN"){
						next();
						return;
					}
				}
				
				res.status(403).send("Require Manager or Admin Roles!");
			})
		})
}

isPmOrAdmin = (req, res, next) => {
	Rider.findById(req.userId)
		.then(rider => {
			rider.getRoles().then(roles => {
				for(let i=0; i<roles.length; i++){					
					if(roles[i].name.toUpperCase() === "MANAGER"){
						next();
						return;
					}
					
					if(roles[i].name.toUpperCase() === "ADMIN"){
						next();
						return;
					}
				}
				
				res.status(403).send("Require Manager or Admin Roles!");
			})
		})
}

const authJwt = {};
authJwt.verifyToken = verifyToken;
authJwt.isAdmin = isAdmin;
authJwt.isPmOrAdmin = isPmOrAdmin;

module.exports = authJwt;