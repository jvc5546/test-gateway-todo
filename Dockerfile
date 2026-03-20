FROM node:20-alpine AS base
WORKDIR /app

COPY app/package*.json ./
RUN npm install --omit=dev

COPY app/ .

EXPOSE 8080
ENV PORT=8080

USER node
CMD ["node", "server.js"]