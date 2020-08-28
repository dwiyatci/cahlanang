FROM node:14.9-slim

WORKDIR /usr/src/app
COPY package.json .
RUN yarn install

EXPOSE 3000
ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD [ "yarn", "start" ]

COPY . .
