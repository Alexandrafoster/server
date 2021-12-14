const db = require('../config/db.config.js');
const config = require('../config/config.js');
const ROLEs = config.ROLEs;
const Admin = db.admin;
const Manager = db.manager;
const Customer = db.customer;
const Rider = db.rider;
// const Rider = db.riders;

checkDuplicateUserNameOrEmail = (req, res, next) => {
		Admin.findOne({
			where: {
				email: req.body.email
			}
		}).then(admin => {
			if (admin) {
				res.status(400).send("Fail -> Email is already in use!");
				return;
			}

			next();
		});
	// });
}

checkDuplicateUserNameOrEmail1 = (req, res, next) => {
		Manager.findOne({
			where: {
				email: req.body.email
			}
		}).then(manager => {
			if (manager) {
				res.status(400).send("Fail -> Email is already in use!");
				return;
			}

			next();
		});
	// });
}

checkDuplicateUserNameOrEmail2 = (req, res, next) => {
		Customer.findOne({
			where: {
				email: req.body.email
			}
		}).then(customer => {
			if (customer) {
				res.status(400).send("Fail -> Email is already in use!");
				return;
			}
			next();
		});
	// });
}

checkDuplicateUserNameOrEmail3 = (req, res, next) => {
	Rider.findOne({
		where: {
			email: req.body.email
		}
	}).then(rider => {
		if (rider) {
			res.status(400).send("Fail -> Email is already in use!");
			return;
		}
		next();
	});
// });
}

checkRolesExisted = (req, res, next) => {
	for (let i = 0; i < req.body.roles.length; i++) {
		if (!ROLEs.includes(req.body.roles[i].toUpperCase())) {
			res.status(400).send("Fail -> Does NOT exist Role = " + req.body.roles[i]);
			// console.log('Server Side Role = ', req.body.roles[i].toUpperCase());
			// console.log('Server Side i = ', i)
			return;
		}
	}
	next();
}

const signUpVerify = {};
signUpVerify.checkDuplicateUserNameOrEmail = checkDuplicateUserNameOrEmail;
signUpVerify.checkDuplicateUserNameOrEmail1 = checkDuplicateUserNameOrEmail1;
signUpVerify.checkDuplicateUserNameOrEmail2 = checkDuplicateUserNameOrEmail2;
signUpVerify.checkDuplicateUserNameOrEmail3 = checkDuplicateUserNameOrEmail3;
signUpVerify.checkRolesExisted = checkRolesExisted;

module.exports = signUpVerify;