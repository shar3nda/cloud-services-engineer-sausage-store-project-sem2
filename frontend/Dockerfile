FROM node:16-alpine3.18 as builder
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

FROM nginx:1.31-alpine3.23-slim
WORKDIR /app

COPY --from=builder --chown=nginx:nginx /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
