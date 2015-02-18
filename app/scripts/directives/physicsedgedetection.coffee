'use strict'

###*
 # @ngdoc directive
 # @name orbitApp.directive:physicsEdgeDetection
 # @description
 # # physicsEdgeDetection
###
angular.module 'orbitApp'
  .directive 'physicsEdgeDetection', ['physics', 'world', (physics, world) ->
    restrict: 'E'
    scope:
      minX: '@'
      minY: '@'
      maxX: '@'
      maxY: '@'
      restitution: '@'
    link: (scope) ->

      bounds = physics.aabb parseInt(scope.minX),
        parseInt(scope.minY),
        parseInt(scope.maxX),
        parseInt(scope.maxY)

      world.add Physics.behavior 'edge-collision-detection',
        aabb: bounds
        restitution: parseFloat(scope.restitution)
  ]
