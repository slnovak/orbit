'use strict'

###*
 # @ngdoc directive
 # @name orbitApp.directive:physicsBody
 # @description
 # # physicsBody
###
angular.module 'orbitApp'
  .directive 'physicsBody', ['physics', 'world', ->
    restrict: 'E'
    scope:
      options: '='
      body: '='
      type: '@'
    link: (scope) ->
      scope.body = physics.body scope.type, scope.options
      world.add scope.body
  ]
