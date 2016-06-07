FROM alpine

WORKDIR /usr/local/provisioning

RUN set -x && \
    apk update && \
    apk upgrade && \
    apk add --no-cache g++ libxml2-dev make ruby ruby-dev && \
    gem install infrataster --no-ri --no-rdoc

COPY infrataster/.rspec .rspec
COPY infrataster/spec spec

CMD ["tail", "-f", "/dev/null"]
