FROM alpine:latest

USER root

RUN apk add --no-cache squid apache2-utils

COPY configure ./
COPY conf/squid.conf /etc/squid/squid.conf
RUN chmod a+x configure

EXPOSE 17845/tcp

ENTRYPOINT ["./configure"]