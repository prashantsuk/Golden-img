#  Alpine Linux 3.14.0 as the base image
FROM alpine:3.14.0
# Update the package repository and upgrade the specified packages
RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
        apk-tools \
        zlib \
        libretls \
        libssl1.1 \
        libcrypto1.1 \
        ssl_client \
        busybox \
        alpine-baselayout \
        alpine-keys \
        ca-certificates-bundle \
        libssl1.1 \
        libcrypto1.1 \
        musl-utils \
        musl \
        scanelf
# CMD or ENTRYPOINT can be used to specify the default command when the container starts
# CMD ["command", "argument"]
