FROM alpine:3

RUN apk update && apk upgrade

RUN apk add --no-cache \
      chromium=105.0.5195.52-r0 \
      nss=3.82-r0 \
      freetype=2.12.1-r0 \
      harfbuzz=5.1.0-r0 \
      ca-certificates=20220614-r2 \
      ttf-freefont=20120503-r2 \
      nodejs=16.17.0-r0 \
      npm=8.18.0-r1 \
      yarn=1.22.19-r0 \
      bash=5.1.16-r2

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
