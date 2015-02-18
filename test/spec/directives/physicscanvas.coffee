'use strict'

describe 'Directive: physicsCanvas', ->

  # load the directive's module
  beforeEach module 'orbitApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<physics-canvas></physics-canvas>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the physicsCanvas directive'
