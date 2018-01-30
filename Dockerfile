FROM alpine:3.7
COPY xmrig /
COPY config.json /
RUN apk add --update libuv && rm -rf /var/cache/apk/*
    && chmod +x xmrig \
ENTRYPOINT ["./xmrig"]
