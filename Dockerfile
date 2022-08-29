FROM node:14-alpine

USER root

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN \
  # Puppeteer
  && apk add --no-cache ca-certificates chromium nss freetype harfbuzz ttf-freefont
  