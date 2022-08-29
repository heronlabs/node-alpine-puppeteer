FROM node:14-alpine

USER root

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN apk add --no-cache \
  ca-certificates=latest \
  chromium=latest \
  nss=latest \
  freetype=latest \
  harfbuzz=latest \
  ttf-freefont=latest

USER guest
