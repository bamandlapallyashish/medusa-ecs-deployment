FROM node:20

WORKDIR /app

COPY my-medusa-store/ .

RUN npm install

EXPOSE 9000

CMD ["npm", "start"]
