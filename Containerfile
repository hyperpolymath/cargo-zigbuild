FROM cgr.dev/chainguard/rust:latest-dev

USER root

RUN apk update && apk add --no-cache \
    curl \
    xz \
    git \
    build-base \
    unzip \
    bash

# Install Zig
RUN curl -O https://ziglang.org/download/0.13.0/zig-linux-x86_64-0.13.0.tar.xz && \
    tar xf zig-linux-x86_64-0.13.0.tar.xz && \
    mv zig-linux-x86_64-0.13.0 /usr/local/zig && \
    ln -s /usr/local/zig/zig /usr/local/bin/zig && \
    rm zig-linux-x86_64-0.13.0.tar.xz

USER nonroot

ENV SDKROOT=/opt/osxcross/SDK/MacOSX11.3.sdk

CMD ["bash"]
