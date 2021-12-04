FROM golang:1.17.4

LABEL name="Go Node Bedrock"
LABEL maintainer="mlussier@gmail.com"

#
# Env for apt-get
#
ENV DEBIAN_FRONTEND noninteractive

#
# gcc for cgo
#
RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y --no-install-recommends \
  g++ \
  wget \
  gcc \
  libc6-dev \
  libpcre++-dev \
  libsasl2-dev \
  make \
  pkg-config \
  xz-utils\
  tree \
  libssl-dev \
  libzstd-dev \
  software-properties-common \
  apt-transport-https \
  netcat \
  git \
  rpm \
  gettext-base \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#
# librdkafka
#

ENV LIBRDKAFKA_VERSION 1.8.2

RUN wget https://github.com/edenhill/librdkafka/archive/v$LIBRDKAFKA_VERSION.tar.gz \
  && tar -xvf v$LIBRDKAFKA_VERSION.tar.gz  \
  && cd librdkafka-$LIBRDKAFKA_VERSION \
  && ./configure --install-deps \
  && make \
  && make install


#
# NodeJS
# Kept up to date from https://github.com/nodejs/docker-node/blob/master/15/alpine3.11/Dockerfile
#                  and https://github.com/nodejs/docker-node/blob/main/16/alpine3.14/Dockerfile
#

ENV NODE_VERSION 17.1.0

ENV NPM_CONFIG_LOGLEVEL info
RUN set -ex \
  && for key in \
  4ED778F539E3634C779C87C6D7062848A1AB005C \
  94AE36675C464D64BAFA68DD7434390BDBE9B9C5 \
  74F12602B6F1C4E913FAA37AD3A89613643B6201 \
  71DCFD284A79C3B38668286BC97EC7A07EDE3FC1 \
  8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600 \
  C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8 \
  C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C \
  DD8F2338BAE7501E3DD5AC78C273792F7D83545D \
  A48C2BEE680E841632CD4E44F07496B3EB3C1762 \
  108F52B48DB57BB0CC439B2997B01419BD92F80A \
  B9E2F5981AA6E0CD28160D9FF13993A75599653C \
  ; do \
  gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" || \
  gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" ; \
  done

RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" \
  && case "${dpkgArch##*-}" in \
  amd64) ARCH='x64';; \
  ppc64el) ARCH='ppc64le';; \
  s390x) ARCH='s390x';; \
  arm64) ARCH='arm64';; \
  armhf) ARCH='armv7l';; \
  i386) ARCH='x86';; \
  *) echo "unsupported architecture"; exit 1 ;; \
  esac \
  && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz" \
  && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc" \
  && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc \
  && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c - \
  && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner \
  && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt \
  && apt-get purge -y --auto-remove $buildDeps \
  && ln -s /usr/local/bin/node /usr/local/bin/nodejs

#
# NFPM
#

ENV NFPM_VERSION 2.8.0

RUN curl -fsSLO --compressed "https://github.com/goreleaser/nfpm/releases/download/v${NFPM_VERSION}/nfpm_${NFPM_VERSION}_Linux_x86_64.tar.gz" \
  && tar -xzvf "nfpm_${NFPM_VERSION}_Linux_x86_64.tar.gz" -C /usr/local/bin  --no-same-owner \
  && rm nfpm_${NFPM_VERSION}_Linux_x86_64.tar.gz

#
# Install Golang deps
#

#
# packr and pkgr
#
RUN go get -u github.com/gobuffalo/packr/v2/packr2 \
  && go get github.com/markbates/pkger/cmd/pkger

ENV GO111MODULE on

#
# Swag CLI
#
RUN go get -u github.com/swaggo/swag/cmd/swag

#
# GolangCI Lint
#

ENV GOLANGCI_LINT_VERSION 1.43.0

RUN curl -sfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh| sh -s -- -b $(go env GOPATH)/bin v${GOLANGCI_LINT_VERSION}

#
# GoSec
#

ENV GOSEC_VERSION 2.9.1

RUN curl -sfL https://raw.githubusercontent.com/securego/gosec/master/install.sh | sh -s -- -b $GOPATH/bin v${GOSEC_VERSION}

#
# Revive
#
RUN go get -u github.com/mgechev/revive

#
# FailLint https://github.com/fatih/faillint
#
RUN go get github.com/fatih/faillint

#
# Install Node deps and settings
#
ENV YARN_VERSION 1.22.17
ENV PRETTIER_VERSION 2.4.1
ENV LERNA_VERSION=4.0.0
RUN  /usr/local/bin/npm set progress=false \
  && /usr/local/bin/npm config set loglevel warn \
  #
  # Yarn, Prettier, Rush and Pnpm
  #
  && npm install yarn@${YARN_VERSION} prettier@${PRETTIER_VERSION} lerna@${LERNA_VERSION} -g

#
# Install PNPM and RUSH. These change ALOT so keeping them isolated so the download is small
#
ENV RUSH_VERSION 5.56.0
ENV PNPM_VERSION 6.21.0

RUN  /usr/local/bin/npm set progress=false \
  && /usr/local/bin/npm config set loglevel warn \
  #
  # Yarn, Prettier, Rush and Pnpm
  #
  && npm install @microsoft/rush@${RUSH_VERSION} pnpm@${PNPM_VERSION} -g


