FROM python

WORKDIR /app

RUN pip3 install pyprind && \
  apt-get -y update && \
  apt-get -y --no-install-recommends install ghostscript && \
  curl https://raw.githubusercontent.com/hkdb/cpdf/master/cpdf -o /bin/cpdf && \
  chmod +x /bin/cpdf && \
  rm -rf /var/lib/apt/lists/*

RUN ls -lah /bin

ENTRYPOINT [ "cpdf" ]
