FROM node:20.11.1
WORKDIR /app
COPY ./package.json  .
COPY ./package-lock.json  .
RUN npm install -g npm@10.2.4
COPY  .  .
EXPOSE 8080
CMD ["node", "server.js"]