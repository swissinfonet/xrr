FROM alpine:latest
COPY xmrig /
COPY config.json /
RUN apk --no-cache upgrade \
    && apk --no-cache add \
    libuv-dev \
    && chmod +x xmrig
ENTRYPOINT ["./xmrig"]
CMD ["config.json"]
