FROM node:14.9-slim

WORKDIR /usr/src/app
COPY package.json .
RUN yarn install
RUN yarn global add nyancat

EXPOSE 8080
ENTRYPOINT [ "./docker-entrypoint.sh" ]
CMD [ "yarn", "start" ]

COPY . .
