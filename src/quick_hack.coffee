fs = require 'fs'

module.exports = (req, res, next) -> 

    #
    # quick hac gets http://localhost:10101/ 
    # to respond with something that connects
    # a socket and receives event feed 
    #

    res.send fs.readFileSync(

        __dirname + '/../view/index.html'

    ).toString()
