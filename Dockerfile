FROM          alpine:3.7 as build

ENV           XMRIG_BUILD_DIR /build

RUN           apk --no-cache add build-base cmake curl git libuv-dev

RUN           mkdir $XMRIG_BUILD_DIR && cd $XMRIG_BUILD_DIR 
COPY          xmrig $XMRIG_BUILD_DIR
RUN           mv $XMRIG_BUILD_DIR/xmrig /usr/bin/

FROM          alpine:3.7
RUN           apk --no-cache add libuv-dev
COPY          --from=build /usr/bin/xmrig /usr/bin/
ENTRYPOINT    ["xmrig"]
