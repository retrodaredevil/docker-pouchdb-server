# docker-pouchdb-server
A Docker image containing pouchdb-server binary. Made specifically to be compatible on linux/arm/v7 architecture.
Many architectures are supported.

This image based off of [node](https://hub.docker.com/_/node) and uses [pouchdb-server](https://www.npmjs.com/package/pouchdb-server).

https://hub.docker.com/r/retrodaredevil/pouchdb-server

## Why PouchDB
* https://pouchdb.com/guides/#couchbase-couchdb-couch-what

## Releases

Information for releases can be found [here]() and the tags can be found on the [packages page](https://github.com/retrodaredevil?tab=packages&repo_name=docker-pouchdb-server).
Using the `latest` tag is recommended.
Tags are split into two parts. These parts are separated by a `-`.
The first part represents the version of the [Dockerfile](Dockerfile) used to build the image.
The second part represents the version of [pouchdb-server](https://www.npmjs.com/package/pouchdb-server?activeTab=versions).
If the second part is not present in the tag, then it is the latest version of pouchdb-server.
For instance `latest-4.2.0` represents pouchdb-server 4.2.0 using the [latest release](https://github.com/retrodaredevil/docker-pouchdb-server/releases/latest).

## Running

```shell
# TODO
```



---

## Building Locally
```
docker buildx create --use
docker buildx build --platform linux/amd64,linux/arm/v7,linux/arm64/v8,linux/ppc64le,linux/s390x -t retrodaredevil/pouchdb-server:latest .
```
If you want to run the image locally, instead do:
```
docker buildx build --platform linux/amd64 --load -t retrodaredevil/pouchdb-server:latest .
```
If you also want to push
```
docker login
# paste `docker buildx build ...` command here with --push argument
```

## Why not use alpine as base?
There are issues building/running alpine images on linux/arm/v7.
These issues relate to problems running `npm install` on modern node:alpine images:
* [Alpine 3.13.0 release notes](https://wiki.alpinelinux.org/wiki/Release_Notes_for_Alpine_3.13.0#time64_requirements)
* https://github.com/alpinelinux/docker-alpine/issues/135
* https://github.com/nodejs/docker-node/issues/1477
* https://github.com/svrooij/sonos2mqtt/issues/152
* https://github.com/tg44/mqtt-transformer/issues/15

The real solution would be that all Raspberry Pis need an updated version, but if you run this you will see that (at the time of writing) it is not updated in the default repositories:
```
sudo apt-get -s install libseccomp2
```
