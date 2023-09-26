FROM node:10-alpine

RUN mkdir -p /opt/app/node-express-hello-world

COPY node-express-hello-world /opt/app/node-express-hello-world

WORKDIR /opt/app/node-express-hello-world

RUN npm install

EXPOSE 3000

CMD [ "npm", "start"]

# docker build --tag eis-inventory-api:v1.1 .
# docker run -it eis-inventory-api:v1.1 /bin/bash
