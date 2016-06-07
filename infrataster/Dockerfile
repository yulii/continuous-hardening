FROM alpine

WORKDIR /usr/local/provisioning

RUN set -x && \
    apk update && \
    apk upgrade && \
    apk add --no-cache g++ libxml2-dev make ruby ruby-dev && \
    gem install infrataster rake --no-ri --no-rdoc

COPY serverspec/.rspec .rspec
COPY serverspec/spec spec

CMD ["tail", "-f", "/dev/null"]
