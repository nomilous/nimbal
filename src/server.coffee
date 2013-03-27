express = require 'express'
plex    = require 'plex'
http    = require 'http'

host    = 'localhost'
port    = 10101

module.exports = 

    start: -> 

        #
        # start an express server
        #

        app    = express()
        server = http.createServer app
        server.listen 10101, host, -> 

            console.log 'listening @ %s:%s',

                server.address().address, 
                server.address().port

        #
        # piggyback a socket.io plex adaptor on the
        # same server
        #

        plex.start
            
            listen: 

                adaptor: 'socket.io'  
                server: server

