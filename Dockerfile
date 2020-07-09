FROM ubuntu

WORKDIR /app

RUN apt-get -y update && \
  apt-get -y --no-install-recommends install ghostscript && \
  rm -rf /var/lib/apt/lists/*

COPY docker-resources/run.sh /run.sh

ENTRYPOINT [ "/run.sh" ]
