'use strict'

describe 'Service: ticker', ->

  # load the service's module
  beforeEach module 'orbitApp'

  # instantiate service
  ticker = {}
  beforeEach inject (_ticker_) ->
    ticker = _ticker_

  it 'should do something', ->
    expect(!!ticker).toBe true
