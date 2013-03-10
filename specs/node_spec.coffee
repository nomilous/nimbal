require('nez').realize 'Node', (Node, test, When, should) -> 

    When 'creating a new node', (it) ->

        it 'should create the corresponding reference in the source', (done) -> 

            ###

            feature

                as:    'a user'
                need:  'this feature'
                to:    'have an ability'
                ref:   '23rqwfqq22f323qfqwfdqq' # <-------------- (THIS...
                title: 'an ability', (specs) -> 


                ...mongo_id: Must make its way into the spec/requirements files
                             at all the appropriate times: 

                             1. at story capture in the UI (a nez-git plugin?)
                             2. at first spec run when developer captured 
                                by hand (in source)

            ###


            done()
