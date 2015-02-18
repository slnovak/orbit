'use strict'

describe 'Directive: physicsBehavior', ->

  # load the directive's module
  beforeEach module 'orbitApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<physics-behavior></physics-behavior>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the physicsBehavior directive'
