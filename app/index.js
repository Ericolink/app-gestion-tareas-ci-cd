const express = require('express');
const app = express();

app.use(express.json());

let tareas = [];

app.get('/', (req, res) => {
  res.send('API de tareas funcionando 🚀');
});

app.get('/tareas', (req, res) => {
  res.json(tareas);
});

app.post('/tareas', (req, res) => {
  const tarea = req.body;
  tareas.push(tarea);
  res.status(201).json(tarea);
});

app.listen(3000, () => {
  console.log('Servidor corriendo en puerto 3000');
});