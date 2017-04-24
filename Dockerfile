FROM node:alpine

RUN npm install -g json-minify

COPY mattermost.json /tmp/mattermost.json

CMD [ "json-minify", "/tmp/mattermost.json"]
