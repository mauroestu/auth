FROM sa/general

LABEL maintainer="mauroestu18@gmail.com"
LABEL version="1.0"

RUN mkdir -p /opt/auth
WORKDIR /opt/auth

COPY package.json
RUN npm install --quiet
RUN npm install nodemon -g --quiet

COPY controllers routes app.js config.js index.js

EXPOSE 8000

CMD nodemon index.js