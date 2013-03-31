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

        
        app.get '/', require './quick_hack'


        #
        # piggyback a socket.io plex adaptor on the
        # same server
        #

        plex.start

            secret: secret
            
            listen: 

                server: server
                adaptor: 'socket.io'

            protocol: (When, Then) -> 

                #
                # TODO: in plex, this likely fires before the auth 
                #       (i suspiciously recall)
                # 
                #       emit 'authenticated' event after secret 
                #       validation
                # 

                # When 'authenticated', -> 
                When 'event:connect', -> 

                    #
                    # got a new connection, send registration request
                    #

                    Then 'register:req'

                When 'register:res', (payload) -> 

                    #
                    # received registration response
                    #

                    console.log '\n\n%s\n\n', JSON.stringify payload, null, 2



