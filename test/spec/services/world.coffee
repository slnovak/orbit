'use strict'

describe 'Service: world', ->

  # load the service's module
  beforeEach module 'orbitApp'

  # instantiate service
  world = {}
  beforeEach inject (_world_) ->
    world = _world_

  it 'should do something', ->
    expect(!!world).toBe true
