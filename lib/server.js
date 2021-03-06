// Generated by CoffeeScript 1.4.0
var express, host, http, plex, port, secret;

express = require('express');

plex = require('plex');

http = require('http');

console.log('TODO: https');

console.log('TODO: config, secret, host, port');

secret = 'SEEKRIT';

host = 'localhost';

port = 10101;

module.exports = {
  start: function() {
    var app, server;
    app = express();
    server = http.createServer(app);
    server.listen(port, host, function() {
      return console.log('listening @ %s:%s', server.address().address, server.address().port);
    });
    app.get('/', require('./quick_hack'));
    return plex.start({
      secret: secret,
      listen: {
        server: server,
        adaptor: 'socket.io'
      },
      protocol: function(When, Then) {
        When('event:connect', function() {
          return Then('register?');
        });
        return When('register!', function(payload) {
          return console.log('\nRECEIVED register!\n%s\n\n', JSON.stringify(payload, null, 2));
        });
      }
    });
  }
};
