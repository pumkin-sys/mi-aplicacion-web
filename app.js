// app.js
const express = require('express');
const routes = require('./routes'); 
const app = express();

app.use('/', routes);

app.listen(3000, () => {
  console.log('Aplicación escuchando en el puerto 3000');
});
