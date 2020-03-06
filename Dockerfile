FROM alpine:latest

USER root
WORKDIR ~/

RUN apk add --no-cache squid

COPY configure ./
COPY conf/squid.conf /etc/squid/squid.conf
RUN chmod a+x configure

EXPOSE 3128/tcp

ENTRYPOINT ["./configure"]