FROM alpine

RUN set -x && \
    apk update && \
    apk upgrade && \
    apk add --no-cache ruby ruby-io-console ruby-json && \
    gem install itamae rake serverspec --no-ri --no-rdoc

COPY . /usr/local/provisioning

CMD ["tail", "-f", "/dev/null"]
