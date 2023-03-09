FROM node:18-bullseye-slim

RUN npm install -g pouchdb-server@4.2.0

ENTRYPOINT ["pouchdb-server", "--host", "0.0.0.0"]
