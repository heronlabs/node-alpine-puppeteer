FROM heronlabs/node-alpine:3

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache \
	chromium=108.0.5359.125-r0 \
	nss=3.85-r0 \
	freetype=2.12.1-r0 \
	harfbuzz=5.3.1-r1 \
	ca-certificates=20220614-r3 \
	ttf-freefont=20120503-r3
