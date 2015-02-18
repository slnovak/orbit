'use strict'

###*
 # @ngdoc directive
 # @name orbitApp.directive:physicsCanvas
 # @description
 # # physicsCanvas
###
angular.module 'orbitApp'
  .directive 'physicsCanvas', ['physics', 'world', 'ticker', (physics, world, ticker) ->
    restrict: 'E'
    transclude: true
    template: '<canvas width={{width}} height={{height}}></canvas><div ng-transclude></div>'
    scope:
      width: '@'
      height: '@'
    link: (scope, element) ->
      canvas = element.find 'canvas'
      renderer = physics.renderer 'canvas',
        el: canvas[0]
        width: scope.width
        height: scope.height
      world.add renderer
      canvas.attr 'style', ''
      ticker.start()
  ]
