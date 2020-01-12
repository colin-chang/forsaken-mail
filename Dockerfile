FROM node:12.13-alpine

LABEL version="1.0" maintainer="colinchang<zhangcheng5468@gmail.com>"

COPY src /app
WORKDIR /app

RUN npm install
EXPOSE 25 3000
ENTRYPOINT npm start