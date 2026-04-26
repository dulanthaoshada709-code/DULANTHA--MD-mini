FROM node:18-slim

WORKDIR /app

COPY package.json .npmrc ./

RUN npm install --prefer-offline --no-audit --no-fund

COPY . .

EXPOSE 8000

CMD ["node", "index.js"]
