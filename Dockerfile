FROM python

RUN apt-get -y update
RUN apt-get -y install ghostscript
RUN curl https://raw.githubusercontent.com/hkdb/cpdf/master/cpdf -o /bin/cpdf
RUN chmod +x /bin/cpdf

WORKDIR /app
RUN ls -lah /bin

ENTRYPOINT [ "cpdf" ]
