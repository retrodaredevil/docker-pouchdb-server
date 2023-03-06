#FROM node:current-alpine3.12
FROM node:18-alpine

RUN npm install -g pouchdb-server@4.2.0

ENTRYPOINT ["pouchdb-server", "--host", "0.0.0.0"]
