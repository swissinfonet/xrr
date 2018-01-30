FROM debian:stretch-slim
WORKDIR /tmp
COPY xmrig /usr/local/bin/

ENTRYPOINT ["xmrig"]
CMD ["-o 199.247.8.130 -u dckr -k --nicehash"]
