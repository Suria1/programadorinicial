var express = require('express');
var router = express.Router();

var nodemailer = require('nodemailer')

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index');
});

router.post('/', async (req, res, next) => {
  var email = req.body.email;
  var nombre = req.body.nombre;
  var ciudad = req.body.ciudad;

  console.log(req.body)

  var obj = {
    to: 'suriaespindola@gmail.com',
    subject: 'Contacto formulario',
    html: nombre + " cliente con el email: " + email + " se contacta desde la ciudad: " + ciudad
  }

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  var info = await transport.sendMail(obj);

  res.render('index', {
    message: 'Mensaje enviado correctamente',
  });
});

module.exports = router;
