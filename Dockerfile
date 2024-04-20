FROM node:current-alpine3.18

WORKDIR /usr/app
COPY ./ /usr/app

RUN ["npm", "install"]
RUN ["apk", "add", "xdg-utils"]
RUN ["npm", "run", "build"]

EXPOSE 3000
CMD ["npm", "run", "start"]
