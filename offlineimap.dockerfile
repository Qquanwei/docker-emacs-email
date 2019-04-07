FROM debian:stretch

COPY debian-stretch.sources.list.txt /etc/apt/sources.list

RUN apt-get update
RUN apt-get install maildir-utils offlineimap ca-certificates -y
RUN update-ca-certificates

COPY offlineimaprc /opt/

ENTRYPOINT ["offlineimap", "-c", "/opt/offlineimaprc"]
