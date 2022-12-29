FROM alpine:3

RUN apk update && apk upgrade

# hadolint ignore=DL3018
RUN apk add --no-cache \
      chromium \
      nss \
      freetype \
      harfbuzz \
      ca-certificates \
      ttf-freefont \
      nodejs \
      npm \
      yarn \
      bash

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
      PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
