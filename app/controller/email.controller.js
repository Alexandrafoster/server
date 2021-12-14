const express = require("express");
// const cors = require("cors");
const bodyParser = require("body-parser");
const nodemailer = require("nodemailer");

const details = require("./../../details.json");

const app = express();
// app.use(cors({ origin: "*" }));
app.use(bodyParser.json());

// app.listen(3000, () => {
//   console.log("The server started on port 3000 !!!!!!");
// });
exports.test = function(req, res) {
  res.send(
    "<h1 style='text-align: center'>Wellcome to FunOfHeuristic <br><br>😃👻😃👻😃👻😃👻😃</h1>"
  );
};

exports.sendmail = function(req, res) {
  // console.log("request came");
  let user = req.body;
  sendMail(user, info => {
    // console.log(`The mail has beed send 😃 and the id is ${info.messageId}`);
    res.send(info);
  });
};

async function sendMail(user, callback) {
  // create reusable transporter object using the default SMTP transport
  let transporter = nodemailer.createTransport({
    host: "mail.raftaar.com.pk",
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
    from: '"Welcome to Raftaar"<noreply@raftaar.com.pk>', // sender address
    to: user.email, // list of receivers
    subject: "Thanks for registering with us", // Subject line
    html: `<h1>Hi ${user.name}</h1><br>
    <h4>your request is with Admin and you will be notified once your account get activated</h4><br>
    <h4>Thanks for joining us</h4>`
  };

  // send mail with defined transport object
  let info = await transporter.sendMail(mailOptions);

  callback(info);
}

exports.sendmail1 = function(req, res) {
  // console.log("request came");
  let user = req.body;
  sendMail1(user, info => {
    // console.log(`The mail has beed send 😃 and the id is ${info.messageId}`);
    res.send(info);
  });
};

async function sendMail1(user, callback) {
  // create reusable transporter object using the default SMTP transport
  let transporter = nodemailer.createTransport({
    host: "smtp.gmail.com",
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
    from: '"Welcome to Raftaar"<noreply@raftaar.com.pk>', // sender address
    to: user.email, // list of receivers
    subject: "Thanks for registering with us", // Subject line
    html: `<h1>Hi ${user.name}</h1><br>
    <h4>Congratulations ! Your account has been activated, use below information to login. </h4><br>
    <h4>User Name : ${user.name}</h4>
    <h4>Thanks for joining us</h4>
    <h4>Kindly access your account and update your profile.</h4>`
  };

  // send mail with defined transport object
  let info = await transporter.sendMail(mailOptions1);

  callback(info);
}

// main().catch(console.error);
