# NAMA FILE: Dockerfile

FROM node:14

WORKDIR /usr/src/app/backend
COPY . .

RUN npm i
RUN npm install -g sequelize-cli
RUN sequelize db:migrate

EXPOSE 5000
CMD ["npm","start"]
