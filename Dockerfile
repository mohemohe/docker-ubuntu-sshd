FROM ubuntu:latest
ARG S6_OVERLAY_VERSION=v2.2.0.3
ARG S6_OVERLAY_ARCH=amd64

RUN apt update && \
    apt install -y --no-install-recommends ca-certificates curl openssh-server sudo && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* && \
    groupadd wheel && \
    echo '' >> /etc/sudoers && \
    curl -L https://github.com/just-containers/s6-overlay/releases/download/$S6_OVERLAY_VERSION/s6-overlay-$S6_OVERLAY_ARCH-installer > s6-overlay-installer && \
    chmod +x s6-overlay-installer && \
    ./s6-overlay-installer / && \
    rm s6-overlay-installer

ADD ./root /

EXPOSE 22
ENTRYPOINT ["/init"]