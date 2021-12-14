module.exports = (sequelize, Sequelize) => {
	const Admin = sequelize.define('admin', {
	  name: {
		  type: Sequelize.STRING
	  },
	  username: {
		  type: Sequelize.STRING
	  },
	  email: {
		  type: Sequelize.STRING
	  },
	  password: {
		  type: Sequelize.STRING
		},
		profilepic: {
		  type: Sequelize.STRING
	  }
	});
	
	return Admin;
}