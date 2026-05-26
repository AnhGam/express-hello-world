FROM node:20-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile --production

COPY . .

EXPOSE 3001

ENV PORT=3001

CMD ["node", "app.js"]
