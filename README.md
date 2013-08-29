node-postgres-pure
==================

The exact same node-postgres module without any of the C/C++ stuff. If you're just using the pure JavaScript bindings, there's really no reason to wait for the native stuff to compile.

### install

`npm install pg.js`

### use

```js
//exact same code, you can just change the string
//in your requires from pg to pg.js and you're done
var pg = require('pg.js')

pg.connect(function(err, client, release) {
  if (err) throw err;
  client.query('SELECT NOW()', function(err, res) {
    release()
    if (err) throw err;
    console.log(res.rows[0])
  })
})
```

### how it works

I pull in the node-postgres repo and delete the `/src` folder and the `.gyp` file.

Then I publish the same code to npm as `pg.js`.  So easy.

### license

MIT
