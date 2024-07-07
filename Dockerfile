FROM node:14

RUN mkdir -p /home/app

COPY package.json ./home/app
COPY package-lock.json ./home/app

COPY . /home/app

WORKDIR /home/app

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]


