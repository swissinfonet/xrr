FROM alpine:3.7
COPY xmrig /
COPY config.json /
RUN apk --no-cache upgrade && \
    apk --no-cache add \
    libuv \
ENTRYPOINT ["./xmrig"]
