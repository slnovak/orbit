'use strict'

###*
 # @ngdoc function
 # @name orbitApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the orbitApp
###
angular.module 'orbitApp'
  .controller 'MainCtrl', ['$scope', 'physics', 'world', ($scope, physics, world) ->
    model = this

    model.box1 = null
    model.box2 = null
    
    model.kick = ->

      model.box1.applyForce(
        x:  0.1
        y: -0.2)

      model.box2.applyForce(
        x: -0.1
        y: -0.2)

    model.grow = ->
      model.box1.geometry.width *= 1.5
      model.box1.geometry.height *= 1.5
      model.box1.mass *= 1.5
      model.box1.view = null
      model.box1.recalc()

    world.add physics.body 'rectangle',
      x: 250
      y: 250
      vx: 0.01
      width: 50
      height: 50

    world.add physics.body 'convex-polygon',
      x: 250
      y: 50
      vx: 0.05
      vertices: [
        {x: 0, y: 80}
        {x: 60, y: 40}
        {x: 60, y: -40}
        {x: 0, y: -80}
      ]

    world.add physics.body 'convex-polygon',
      x: 400
      y: 200
      vx: -0.02
      vertices: [
        {x: 0, y: 80}
        {x: 80, y: 0}
        {x: 0, y: -80}
        {x: -30, y: -30}
        {x: -30, y: 30}
      ]
  ]
