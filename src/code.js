const express = require('express')
const http = require('http')
const  StatusCodes = require('http-status-codes')

const app = express()

const server = http.createServer(app)
app.get('/',(_,res)=>{
    res.send('<h1>hello welcome to docker learning</h1>')
})

app.use((req, res) => {
    const message = "Route does not exist";
    
    return res.status(StatusCodes.NOT_FOUND).json({ message });
  })

server.listen(8080,()=>console.log('app running on port 8080'))