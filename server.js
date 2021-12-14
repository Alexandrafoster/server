var express = require('express');
require('dotenv').config();
var app = express();
var bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use('/public', express.static('public'));
global.__basedir = __dirname;
require('./app/router/router.js')(app);
// require('./app/router/manager.router.js')(app);
require('./app/router/posts.router.js')(app);
// require('./app/router/rider.router.js')(app);
// require('./app/router/countries.router.js')(app);
// require('./app/router/states.router.js')(app);
// require('./app/router/cities.router.js')(app);
// require('./app/router/email.router')(app);
const db = require('./app/config/db.config.js');
const Role = db.role;

// force: true will drop the table if it already exists
// db.sequelize.sync({force: true}).then(() => {
//   console.log('Drop and Resync with { force: true }');
//    initial();
// });

// Create a Server
var server = app.listen(8080, function () {

	var host = server.address().address
	var port = server.address().port

	console.log("App listening at http://%s:%s", host, port)
})

function initial() {
	Role.create({
		id: 1,
		name: "ADMIN"
	});


}