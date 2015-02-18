'use strict'

###*
 # @ngdoc service
 # @name orbitApp.world
 # @description
 # # world
 # Factory in the orbitApp.
###
angular.module 'orbitApp'
  .factory ['world', (physics) ->
    world = physics()

    world.on "step", ->
      world.render()

    render
  ]
