FROM heronlabs/node-alpine:1

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache \
	chromium=108.0.5359.125-r1 \
	nss=3.86-r0 \
	freetype=2.12.1-r0 \
	harfbuzz=6.0.0-r0 \
	ca-certificates=20221203-r1 \
	ttf-freefont=20120503-r2
