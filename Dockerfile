FROM node:18-slim

WORKDIR /app

COPY package.json ./

RUN npm install --legacy-peer-deps --ignore-scripts

COPY . .

EXPOSE 8000

CMD ["node", "index.js"]
