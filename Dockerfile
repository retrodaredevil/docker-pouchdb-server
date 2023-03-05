FROM node:current-alpine3.12

RUN npm install -g pouchdb-server

ENTRYPOINT ["pouchdb-server", "--host", "0.0.0.0"]
