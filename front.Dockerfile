FROM oven/bun:alpine
COPY front /app/src/
WORKDIR /app/src/

RUN apk update && apk upgrade
RUN apk add --no-cache nodejs npm

RUN bun i
RUN npm run build

ENTRYPOINT [ "bun", ".output/server/index.mjs" ]
