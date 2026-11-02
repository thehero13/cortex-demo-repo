const express = require("express");
const { exec } = require("child_process");
const app = express();

app.get("/run", (req, res) => {
  // Command injection
  exec("ls " + req.query.dir, (err, out) => res.send(out));
});

app.get("/eval", (req, res) => {
  // Code injection
  res.send(String(eval(req.query.expr)));
});

app.get("/hello", (req, res) => {
  // Reflected XSS
  res.send("<h1>Hello " + req.query.name + "</h1>");
});

app.listen(3000);
