FROM node

LABEL maintainer="mauroestu18@gmail.com"
LABEL version="1.0"

WORKDIR /opt/auth
add . /opt/auth
COPY package.json
RUN npm install --quiet
RUN npm install nodemon -g --quiet

COPY controllers routes app.js config.js index.js

EXPOSE 8000

CMD nodemon index.js