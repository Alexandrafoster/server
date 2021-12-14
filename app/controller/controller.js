const db = require('../config/db.config.js');
const config = require('../config/config.js');
const Admin = db.admin;
const Role = db.role;
// const Manager = db.manager;
// const Posts = db.posts;
// const Rider = db.rider;
const nodemailer = require("nodemailer");
const details = require("./../../details.json");

const Op = db.Sequelize.Op;
var token1;
var jwt = require('jsonwebtoken');
var bcrypt = require('bcryptjs');
var resetpassword = ''
const { countries, investors, partners } = require('../config/db.config.js');

const { secret } = require('../config/config.js');
const imgurl = process.env.SERVER_URL+'/admin/';


exports.adminsignin = (req, res) => {
	Admin.findOne({
		where: {
			email: req.body.email
		}
	}).then(admin => {
		if (!admin) {
			return res.status(404).send({ reason: 'User Not Found.' });
		}

		var passwordIsValid = bcrypt.compareSync(req.body.password, admin.password);
		if (!passwordIsValid) {
			return res.status(401).send({ auth: false, accessToken: null, reason: 'Invalid Password!' });
		}

		var token = jwt.sign({ id: admin.id }, config.secret, {
			expiresIn: 86400 // expires in 24 hours
		});

		var authorities = [];
		admin.getRoles().then(roles => {
			for (let i = 0; i < roles.length; i++) {
				authorities.push('ROLE_' + roles[i].name.toUpperCase());
			}
			res.status(200).send({
				auth: true,
				accessToken: token,
				username: admin.username,
				email: admin.email,
				authorities: authorities
			});
		})
	}).catch(err => {
		res.status(500).send({ reason: err.message });
	});
}




exports.activateAccount = function(req, res) {
	const {token1} = req.params;
	if(token1) {
		jwt.verify(token1, process.env.JWT_ACC_ACTIVATE, function(err, decodedToken){
		// console.log(decodedToken);
		const email1 = decodedToken.email;
		Customer.update({
			// email: email1,
			
			active: 1,		
			}, {
			where: {
				email: email1
			}
		}).then(() => {
			// res.send({message: 'You have Successfuly Activated, Redirecting for signin'});
			res.redirect(process.env.CLIENT_URL);
			// res.send({ message: 'Update successfully!' });
		}).catch(err => {
			res.status(500).send({ reason: err.message });
		})
	
		})
	}
  }





async function sendMail(user, callback) {
	// create reusable transporter object using the default SMTP transport
	let transporter = nodemailer.createTransport({
	  host: "mail.4itechs.com",
	  port: 587,
	  secure: false, // true for 465, false for other ports
	  auth: {
		user: details.email,
		pass: details.password
	  },
	  tls:{
		rejectUnauthorized: false
	  }
	});
  
	let mailOptions = {
	  from: '"Welcome to HOS"<noreply@hos.com>', // sender address
	  to: user.email, // list of receivers
	  subject: "Account Activation Link", // Subject line
	  html: `<h1>Hi ${user.fname}</h1><br>
	 <h2>Please click on given link to activate your account</h2><br>
	 <p>${process.env.SERVER_URL}/api/auth/email-activate/${token1}</p>`
	};
  
	// send mail with defined transport object
	let info = await transporter.sendMail(mailOptions);
  
	callback(info);
  }

  async function sendMail1(user, callback) {
	// create reusable transporter object using the default SMTP transport
	let transporter = nodemailer.createTransport({
	  host: "mail.4itechs.com",
	  port: 587,
	  secure: false, // true for 465, false for other ports
	  auth: {
		user: details.email,
		pass: details.password
	  },
	  tls:{
		rejectUnauthorized: false
	  }
	});
  
	let mailOptions1 = {
		from: 'noreply@hos.com',
		to: user.email,
		subject: 'Password reset request',
		html:`<body>
		<h2>Please click on given button to reset your password</h2>
		<button><a href=${process.env.CLIENT_URL}${resetpassword}${token1}>Click me</a></button>
		</body>`
	};
	let info = await transporter.sendMail(mailOptions1);
  
	callback(info);
  }

//////////////////////////////////////////////////////////////////////////////

exports.adminBoard = (req, res) => {
	User.findOne({
		where: { id: req.userId },
		attributes: ['name', 'username', 'email', 'profilepic'],
		include: [{
			model: Role,
			attributes: ['id', 'name'],
			through: {
				attributes: ['userId', 'roleId'],
			}
		}]
	}).then(user => {
		res.status(200).send({
			'description': '>>> Admin Contents',
			'user': user
		});
	}).catch(err => {
		res.status(500).send({
			'description': 'Can not access Admin Board',
			'error': err
		});
	})
}


exports.adminProfile = (req, res, next) =>{
    Customer.findOne({ id: req.id },
        (err, customers) => {
            if (!customers)
                return res.status(404).json({ status: false, message: 'Customer record not found.' });
            else
                return res.status(200).json({ status: true, customers : _.pick(customers,['id', 'fname','lname', 'email', 'roles', 'profilepic']) });
        }
    );
}