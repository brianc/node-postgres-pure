node-postgres-pure
==================

The exact node-postgres code without any of the C/C++ stuff. If you're just using the pure JavaScript bindings, there's really no reason to wait for the native stuff to compile.

### install

`npm install pg.js`

### use

```js
var pg = require('pg.js');
//exact same code, you can just change references in your requires from pg to pg.js and you're done
```

### license

MIT
