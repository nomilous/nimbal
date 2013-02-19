Nimbal = require('nez').link

    #
    # Link this branch to its parent node on the Master Plan
    # 

    uri: 'https://localhost:10101/sky/seshat/cloud/distributed/public'



Nimbal

    #
    # local root node, metadata 
    #
    
    class: 'Web Application'
    
    description: """

        An zero maintenance web application that persons/teams can install
        on their workstation or private network host that provides a fluid 
        and uncomplicated interface into a space within which to envision, 
        architect, elaborate upon, assemble, prioritise and sequence the 
        component tasks necessary to bring their software** idea(s) to life.

        ** Although several of the primary features exclusively relate 
           to the processes involved in designing, implementating and 
           maintaining software applications - the posibility of a broader
           usage remains a very realizable posibility. 



    """, (feature) -> 

        feature.link 'spec/login'
        feature.link 'spec/config'
        feature.link 'spec/dash'
        feature.link 'spec/quickjot'
        feature.link 'spec/elaborator'

