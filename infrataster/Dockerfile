FROM alpine

WORKDIR /usr/local/provisioning

RUN set -x && \
    apk update && \
    apk upgrade && \
    apk add --no-cache g++ libxml2-dev make ruby ruby-dev ruby-io-console ruby-json && \
    gem install infrataster --no-ri --no-rdoc

COPY infrataster/.rspec .rspec
COPY infrataster/spec spec

CMD ["rspec"]
