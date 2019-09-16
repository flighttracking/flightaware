FROM debian:xenial

RUN wget http://flightaware.com/adsb/piaware/files/packages/pool/piaware/p/piaware-support/piaware-repository_3.7.1_all.deb \
    && dpkg -i piaware-repository_3.7.1_all.deb

RUN apt-get update \
    && apt-get install -y piaware dump1090-fa dump978-fa

RUN piaware-config allow-auto-updates no \
    && piaware-config allow-manual-updates no