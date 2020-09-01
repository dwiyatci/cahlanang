const express = require('express');
const app = express();
const port = 8080;

app.set('view engine', 'pug');

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.get('*', (req, res) => {
  res.render('limbo', { text: `Cannot GET ${req.originalUrl}` });
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
