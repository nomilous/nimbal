express = require 'express'
plex    = require 'plex'
http    = require 'http'

console.log 'TODO: https'
console.log 'TODO: config, secret, host, port'

secret  = 'SEEKRIT'
host    = 'localhost'
port    = 10101

module.exports = 

    start: -> 

        #
        # start an express server
        #

        app    = express()
        server = http.createServer app
        server.listen port, host, -> 

            console.log 'listening @ %s:%s',

                server.address().address, 
                server.address().port

        #
        # piggyback a socket.io plex adaptor on the
        # same server
        #



        plex.start

            secret: secret
            
            listen: 

                adaptor: 'socket.io'  
                server: server

