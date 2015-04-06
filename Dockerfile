FROM node

EXPOSE 3000

RUN mkdir /nodeapp
VOLUME /nodeapp
WORKDIR /nodeapp

RUN rm /bin/sh && ln -s /bin/bash /bin/sh && \
  npm install -g nodemon mocha supervisor

RUN cd /nodeapp

ENV NODE_ENV development

CMD ["nodemon", "server.js"]

