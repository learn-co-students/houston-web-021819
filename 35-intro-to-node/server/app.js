const pry = require('pryjs')
const express = require('express')
const Dragon = require('./models/Dragon')
const cors = require('cors')
const bodyParser = require('body-parser')


const app = express()

app.use(cors())
app.use(bodyParser.json())

app.get('/dragons', (req, res) => {
    Dragon.findAll()
        .then( dragons => {
            res.json(dragons)
        })
})

app.get('/dragons/:id', (req, res) => {
    Dragon.findByPk(req.params.id)
        .then( dragon => {
            res.json(dragon)
        })
})

app.patch('/dragons/:id', async (req, res) => {
    let dragon = await Dragon.findByPk(req.params.id)
    dragon.update(req.body)
})


app.listen(3001)

// eval(pry.it)