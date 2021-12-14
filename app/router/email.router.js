module.exports = function(app) {

    var email = require('../controller/email.controller.js');

    // Create a new Customer
    // app.post('/api/customer/create', customer.create);

    // Retrieve all Customer
    app.get('/api/email', email.test);
    app.post('/api/email/snd', email.sendmail);
    app.post('/api/email/snd1', email.sendmail1);

}