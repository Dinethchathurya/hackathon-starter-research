FROM node:22-alpine

WORKDIR /starter

ENV NODE_ENV development

COPY . .

RUN npm install -g pm2 && npm install
EXPOSE 8080 

RUN npm build

CMD ["pm2-runtime","app.js"]


