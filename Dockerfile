FROM alpine:edge
LABEL maintainer="Moritz Heiber <hello@heiber.im>"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk --no-cache add wireguard-tools bash

ENTRYPOINT ["/usr/bin/wg"]
