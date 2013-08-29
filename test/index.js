var assert = require('assert')
var pg = require('../')

describe('pg.js', function() {
  it('works', function(done) {
    pg.connect(function(err, client, release) {
      assert.ifError(err)
      client.query('SELECT NOW()', function(err, res) {
        assert.ifError(err)
        release()
        pg.end()
        done()
      })
    })
  })

  it('throws on native require', function() {
    var explode = function() {
      var bang = pg.native
    }
    assert.throws(explode)
  })
})

