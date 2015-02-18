'use strict'

describe 'Directive: physicsBody', ->

  # load the directive's module
  beforeEach module 'orbitApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<physics-body></physics-body>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the physicsBody directive'
