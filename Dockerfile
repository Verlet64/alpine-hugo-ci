FROM alpine:3.7
LABEL maintainer="t.hannan93@gmail.com"

RUN apk add --no-cache curl tar

RUN curl -L https://github.com/gohugoio/hugo/releases/download/v0.31.1/hugo_0.31.1_Linux-32bit.tar.gz > /tmp/hugo.tar.gz && \
tar --extract --gzip --verbose --file /tmp/hugo.tar.gz && \ 
mv hugo /usr/local/bin/