FROM node:carbon-alpine

RUN npm info "eslint-config-airbnb@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install -g "eslint-config-airbnb@latest"
