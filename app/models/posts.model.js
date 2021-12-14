module.exports = (sequelize, Sequelize) => {
	const Posts = sequelize.define('posts', {
	  thumbnail: {
		  type: Sequelize.STRING
	  },
	  thumbcaption: {
		  type: Sequelize.STRING
	  },
	  headerimage: {
		  type: Sequelize.STRING
	  },
	  headerheading: {
		  type: Sequelize.STRING
		},
	  headercontent: {
		  type: Sequelize.STRING
	  },
      bodyheading: {
          type: Sequelize.STRING
      },
      bodycontent: {
          type: Sequelize.STRING
      },
      bodyheading2: {
          type: Sequelize.STRING
      },
      bodycontent2: {
          type: Sequelize.STRING
      }
	});
	
	return Posts;
}