FROM alpine

WORKDIR /app

RUN apk add --no-cache ghostscript

COPY docker-resources/run.sh /run.sh

ENTRYPOINT [ "/run.sh" ]
