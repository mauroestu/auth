FROM node

WORKDIR /opt/auth
add . /opt/auth
RUN npm install --quiet
RUN npm install nodemon -g --quiet


EXPOSE 8086

CMD npm start