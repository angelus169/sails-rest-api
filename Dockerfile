FROM node:10.15.3

COPY package-lock.json package.json ./

RUN npm install sails -g && npm install

COPY . .

EXPOSE 1337

ENTRYPOINT ["sails"]

CMD ["lift"]
