FROM alpine:3

RUN apk update && apk upgrade

RUN apk add --no-cache \
      chromium=edge \
      nss=edge \
      freetype=edge \
      harfbuzz=edge \
      ca-certificates=edge \
      ttf-freefont=edge \
      nodejs=edge \
      npm=edge \
      yarn=edge \
      bash=edge

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
