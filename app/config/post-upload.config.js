const multer = require('multer');

var storage = multer.diskStorage({
	destination: (req, file, cb) => {
	  cb(null, __basedir + '/uploads/post/')
	},
	filename: (req, file, cb) => {
	  cb(null, Date.now() + "-" + file.originalname);
	//   console.log(file.fieldname);
	}
});

var upload = multer({storage: storage});

module.exports = upload;