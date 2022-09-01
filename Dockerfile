FROM alpine:3

RUN apk update && apk upgrade

RUN apk add --no-cache \
      chromium=102.0.5005.173-r0 \
      nss=3.78.1-r0 \
      freetype=2.12.1-r0 \
      harfbuzz=4.3.0-r0 \
      ca-certificates=20220614-r0 \
      ttf-freefont=20120503-r2 \
      nodejs=16.16.0-r0 \
      npm=8.10.0-r0 \
      yarn=1.22.19-r0 \
      bash=5.1.16-r2

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
