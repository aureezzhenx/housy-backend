# NAMA FILE: Dockerfile

FROM node:14

ENV NODE_ENV production
ENV DATABASE_URL postgresql://postgres:postgres@172.31.75.134:5432/dumbflix

WORKDIR /usr/src/app/backend
COPY . .

RUN npm i
RUN npm install -g sequelize-cli
RUN sequelize db:migrate --env production

EXPOSE 5000
CMD ["node", "index.js"]
