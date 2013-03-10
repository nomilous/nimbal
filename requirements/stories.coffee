Stories = require('nez').linked 'Stories'

Stories

    as:    'a stakeholder'
    need:  'to capture stories'
    to:    'ensure necessary functionality'
    title: 'story capture', (specs) -> 


Stories

    as:    'a developer'
    need:  'to map stories to component specs'
    to:    'enable stakeholder view of progress'
    title: 'done when (mapper)', (specs) ->


Stories 

    as:    'a developer'
    need:  'to send story clarification requests'
    to:    'ensure i implement precisely'
    title: 'clarification requests', (specs) -> 


Stories

    as:    'a developer'
    need:  'the story capture form to interface directly to a git repo'
    to:    'not have to write a pageload of these things'
    title: 'requirements git interface', (specs) -> 

        specs.link 'specs/node'