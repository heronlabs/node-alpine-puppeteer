FROM alpine:3

RUN apk update && apk upgrade

RUN apk add --no-cache \
      chromium@edge=105.0.5195.52-r0 \
      nss@edge=3.82-r0 \
      freetype@edge=2.12.1-r0 \
      harfbuzz@edge=5.1.0-r0 \
      ca-certificates@edge=20220614-r2 \
      ttf-freefont@edge=20120503-r2 \
      nodejs@edge=16.17.0-r0 \
      npm@edge=8.18.0-r1 \
      yarn@edge=1.22.19-r0 \
      bash@edge=5.1.16-r2

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
