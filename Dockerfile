FROM debian:stretch-slim

WORKDIR /tmp

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl \
    && curl -L -O https://github.com/xmrig/xmrig/releases/download/v2.4.4/xmrig-2.4.4-gcc7-xenial-amd64-no-api.tar.gz \
    && tar -xvf xmrig-2.4.4-gcc7-xenial-amd64-no-api.tar.gz \
    && rm xmrig-2.4.4-gcc7-xenial-amd64-no-api.tar.gz \
    && mv xmrig-2.4.4/xmrig /usr/local/bin/xmrig \
    && rm -r xmrig-2.4.4 \
    && apt-get -y remove ca-certificates curl \
    && apt-get clean autoclean \
    && rm -rf /var/lib/{apt,dpkg,cache,log}

ENTRYPOINT ["xmrig"]
CMD ["-h"]
