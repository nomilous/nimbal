require('nez').realize 'Server', (it, tests, Server) -> 

    it 'starts express and plex', (done, plex, http) ->

        http.createServer = ->

            return listen: (port, host) ->

                port.should.equal 10101
                host.should.equal 'localhost'

        plex.start = (opts) -> 

            opts.listen.adaptor.should.equal 'socket.io'
            tests done

        Server.start()
