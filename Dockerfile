FROM ubuntu:14.04.2

MAINTAINER myhung@cepave.com

ENV WORKDIR=/home/aggregator PACKDIR=/package PACKFILE=falcon-aggregator.tar.gz CONFIGDIR=/config CONFIGFILE=cfg.json

# Volume
VOLUME $CONFIGDIR $WORKDIR $PACKDIR

# Install Open-Falcon Aggregator Component
COPY $CONFIGFILE $CONFIGDIR/
COPY $PACKFILE $PACKDIR/

WORKDIR /root
COPY run.sh ./

# Port
EXPOSE 6055

# Start
CMD ["./run.sh"]

