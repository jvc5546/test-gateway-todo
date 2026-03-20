FROM node:20-alpine AS base
WORKDIR /app

COPY app/package*.json ./
RUN npm install --omit=dev

COPY app/ .

EXPOSE 80
ENV PORT=80

USER node
CMD ["node", "server.js"]