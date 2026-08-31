FROM node:10

WORKDIR /app

COPY package.json ./
RUN npm install

COPY . .

ENV PORT=4100
ENV HOST=0.0.0.0
EXPOSE 4100

CMD ["npm", "start"]
