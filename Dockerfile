FROM alpine:latest
COPY xmrig /
COPY config.json /
RUN apk --no-cache upgrade \
    && apk --no-cache add \
    libuv-dev
ENTRYPOINT ["./xmrig"]
