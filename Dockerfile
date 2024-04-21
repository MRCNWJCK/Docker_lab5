# 1
FROM node:alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# 2
FROM nginx:alpine
RUN apk add --update nodejs npm
RUN apk add --update curl && \
    rm -rf /var/cache/apk/*
COPY --from=builder /app /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/nginx.conf
EXPOSE 80
HEALTHCHECK --interval=10s --timeout=1s \
  CMD curl -f http://localhost:8080/ || exit 1
WORKDIR /usr/share/nginx/html
ARG VERSION
ENV VERSION=$VERSION
CMD ["node", "index.js"]