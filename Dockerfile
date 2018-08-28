FROM lucasbasquerotto/base

LABEL maintainer Lucas Basquerotto

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY git-entrypoint.sh /
RUN  chmod u+x git-entrypoint.sh

VOLUME /git
WORKDIR /git

ENTRYPOINT ["/git-entrypoint.sh"]
CMD ["--help"]
