FROM node:22-alpine

WORKDIR /starter

ENV NODE_ENV development

COPY . .
RUN npm install -g npm@11.6.1
RUN npm install -g pm2 && npm install
EXPOSE 8080 

CMD ["pm2-runtime","app.js"]


