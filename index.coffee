app = require('express')()
http = require('http').Server(app)
port = 3000

http.listen port, ->
  console.log "listening on *:", port
