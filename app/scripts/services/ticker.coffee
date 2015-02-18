'use strict'

###*
 # @ngdoc service
 # @name orbitApp.ticker
 # @description
 # # ticker
 # Factory in the orbitApp.
###
angular.module 'orbitApp'
  .factory 'ticker', ['physics', 'world', (physics, world) ->
    start: ->
      physics.util.ticker.on (time) ->
        world.step time
      physics.util.ticker.start()
  ]
