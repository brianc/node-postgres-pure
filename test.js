var pg = require('./lib')
pg.connect(function(err, client, done) {
  if(err) throw err
  client.query('SELECT NOW()', function(err, res) {
    console.log(res.rows[0].now)
    done()
    pg.end()
  })
})
