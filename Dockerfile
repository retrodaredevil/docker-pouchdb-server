FROM node:18-bullseye-slim
ARG VERSION

RUN npm install -g pouchdb-server@${VERSION}

ENTRYPOINT ["pouchdb-server"]
