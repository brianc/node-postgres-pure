node-postgres-pure
==================

The exact same node-postgres module without any of the C/C++ stuff. If you're just using the pure JavaScript bindings, there's really no reason to wait for the native stuff to compile.

## DEPRECATED

node-postgres has been updated to make the native compilation and bindings an optional install. Sooo....this `pg.js` module is redundant - it's literally the exact same code as node-postgres now, so you should go install that instead. :smile:

There's no work involved in switching other than changing `pg.js` -> `pg` in your package.json and in your code whenever you `require('pg.js')` -> `require('pg')`. :thumbsup:

I'll continue to keep this one in sync with node-postgres semver until `v5.x`. 

### license

MIT
