chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hubot-logo', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/hubot-logo')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/logo (.*)/)
