FROM alpine

WORKDIR /usr/local/provisioning

RUN set -x && \
    apk update && \
    apk upgrade && \
    apk add --no-cache ruby ruby-io-console ruby-json && \
    gem install itamae rake serverspec --no-ri --no-rdoc

COPY ../cookbooks .
COPY ../roles .
COPY Rakefile .
COPY spec .

CMD ["tail", "-f", "/dev/null"]
