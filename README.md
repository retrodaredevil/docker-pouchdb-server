# docker-pouchdb-server
A Docker image containing pouchdb-server binary. Made specifically to be compatible on linux/arm/v7 architecture

### Issues building on alpine
These issues relate to problems running `npm install` on modern node:alpine images:
* https://github.com/svrooij/sonos2mqtt/issues/152
* https://github.com/tg44/mqtt-transformer/issues/15
