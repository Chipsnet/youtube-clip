express = require('express')
app = require('express')()
router = require('express').Router()
http = require('http').Server(app)
bodyParser = require('body-parser')
port = 8080

# ejsを使用
app.set "view engine", "pug"

# bodyParserを使用
app.use bodyParser()

# 静的ファイルフォルダを指定
app.use "/assets", express.static "./public"
app.use "/downloads", express.static "./videos"

app.get "/", (req, res) ->
    res.render "./index.pug"

app.post "/download", (req, res) ->
    console.log req.body

app.post "/api/file", (req, res) ->

# http listen
http.listen port, ->
    console.log "listening on *:", port
