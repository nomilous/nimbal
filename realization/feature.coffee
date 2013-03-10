# refactor for requirements plugin

feature = require('nez').objective 'feature'

feature as: 'A creative individual', (to) ->


    to 'propery organize my ideas into coherent systems', (i) ->
 
        
        i need: 'quick and easy ways capture them', (feature) ->

            feature.link 'realization/quickjot'


        i need: 'to elaborate on them', (feature) -> 
        
            feature.link 'realization/elaborator'
        

        i need: 'a general overview of them', (feature) ->
        
            feature.link 'realization/dash'
        

        i need: 'to examine them in detail', (feature) ->
        
            feature.link 'realization/visualizer'



tree = require('nez').stacks['feature'].tree
console.log JSON.stringify tree, null, 1

