require('nez').realize 'Server', (Server, test, it) -> 

    it 'starts plex', (done, plex) ->

        plex.start = (opts) -> 

            opts.listen.adaptor.should.equal 'socket.io'
            opts.listen.port.should.equal 10101
            test done

        Server.start()
