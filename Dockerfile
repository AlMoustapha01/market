FROM node:14-alpine

ENV POSTGRES_USER=admin \
    POSTGRES_PASSWORD=12345678

RUN mkdir -p /home/node-app

COPY ./app /home/node-app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/node-app

# will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]
