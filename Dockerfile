FROM heronlabs/node-alpine:3

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# hadolint ignore=DL3018
RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache \
	chromium \
	nss \
	freetype \
	harfbuzz \
	ca-certificates \
	ttf-freefont
