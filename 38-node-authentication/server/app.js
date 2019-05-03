const express = require('express')
const Dragon = require('./models/Dragon')
const socketIo = require('socket.io')
const jwt = require('jsonwebtoken')

const io = socketIo(8080, {
    handlePreflightRequest: function (req, res) {
      var headers = {
        'Access-Control-Allow-Headers': 'Content-Type, Authorization',
        'Access-Control-Allow-Origin': 'http://localhost:3000',
        'Access-Control-Allow-Credentials': true
      };
      res.writeHead(200, headers);
      res.end();
    }
  })

  io.on('connection', socket => {
      if(socket.handshake.headers.authorization){
          let [ type, token ] = socket.handshake.headers.authorization.split(' ')
          let result = jwt.decode(token)
          let userId = result.id
          attachSocketListeners(socket, userId)
      } else {
          socket.close()
      }
  })

let attachSocketListeners = function(socket, userID){
    socket.on(/* What have you */)
}

const User = require('./models/User')
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

app.post('/login', async (req, res) => {
    let users = await User.findAll({ 
        where: {
            name: req.body.name
        }
    })
    let user = users[0]
    if(user.authenticate(req.body.password)){
        res.json(user)
    }
})


app.listen(3001)

