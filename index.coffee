express = require('express')
app = require('express')()
router = require('express').Router()
http = require('http').Server(app)
port = 8080

# ejsを使用
app.set "view engine", "ejs"

# 静的ファイルフォルダを指定
app.use express.static "./public"

app.get "/", (req, res) ->
    res.render "./index.ejs"

# http listen
http.listen port, ->
    console.log "listening on *:", port
