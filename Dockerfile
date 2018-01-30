FROM ubuntu:16.04
COPY xmrig /
COPY config.json /
RUN apt-get update \
    && apt-get -qq --no-install-recommends install \
        libuv1-dev \
    && rm -r /var/lib/apt/lists/* \
    && chmod +x xmrig
ENTRYPOINT ["./xmrig"]
