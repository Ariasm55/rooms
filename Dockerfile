FROM node:16.13.2-bullseye-slim
WORKDIR /usr/src/app

COPY package.json package-lock.json /usr/src/app/
RUN npm ci

COPY . /usr/src/app/
RUN npm run build

CMD ["npm", "start"]
