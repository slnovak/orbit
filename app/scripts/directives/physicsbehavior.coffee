'use strict'

###*
 # @ngdoc directive
 # @name orbitApp.directive:physicsBehavior
 # @description
 # # physicsBehavior
###
angular.module 'orbitApp'
  .directive 'physicsBehavior', ['physics', 'world', (physics, world) ->
    restrict: 'E'
    scope:
      name: '@'
    link: (scope) ->
      world.add physics.behavior(scope.name)
  ]
