FROM ubuntu:xenial
MAINTAINER Sébastien Brochet

ENV DEBIAN_FRONTEND noninteractive

COPY texlive.profile /tmp

RUN apt-get update \
    && apt-get install -y \
        apt-utils \
    && apt-get install -y \
        curl \
        perl \
        perl-doc \
        wget \
    && rm -rf /var/lib/apt/lists/* \
    && curl -L -O http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
    && tar xf install-tl-unx.tar.gz \
    && rm -f install-tl-unx.tar.gz \
    && cd install-tl-20170712 \
    && ./install-tl --profile /tmp/texlive.profile \
    && cd / \
    && rm /tmp/texlive.profile \
    && rm -rf install-tl-20170712 \
    && tlmgr install \
        babel-french \
        etoolbox \
        filehook \
        fontawesome \
        fontspec \
        hyphen-french \
        latexmk \
        lm \
        lm-math \
        microtype \
        moderncv \
        pgf \
        polyglossia \
        siunitx \
        unicode-math \
        xcolor \
        l3packages \
    && tlmgr path add

VOLUME ["/data"]
WORKDIR /data
