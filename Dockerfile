FROM debian:stable

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && \
    apt-get install -y proftpd && \
    apt-get install -y proftpd-mod-crypto && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN sed -i "s/# DefaultRoot/DefaultRoot/" /etc/proftpd/proftpd.conf

EXPOSE 20 21

COPY docker-entrypoint.sh /usr/local/sbin/docker-entrypoint.sh
ENTRYPOINT ["/usr/local/sbin/docker-entrypoint.sh"]

CMD ["proftpd", "--nodaemon"]
