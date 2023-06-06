FROM ghcr.io/livebook-dev/livebook

LABEL description="Livebook with Smee requirements and example notebooks pre-installed" \
      maintainer="pete@digitalidentitylabs.com" \
      org.opencontainers.image.source="https://github.com/Digital-Identity-Labs/smee_live"

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install --no-install-recommends -y xmlsec1 libxml2-utils xsltproc && \
    rm -rf /var/lib/apt/lists && rm -rf /usr/local/src/*

COPY notebooks /data/
