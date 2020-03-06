FROM debian:bullseye-slim

USER root
RUN apt update
RUN apt install squid apache2-utils -y

COPY configure ./
COPY conf/squid.conf /etc/squid/squid.conf
RUN chmod a+x configure

EXPOSE 17845/tcp

CMD ["./configure"]