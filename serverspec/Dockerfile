FROM alpine

WORKDIR /usr/local/provisioning

RUN set -x && \
    apk update && \
    apk upgrade && \
    apk add --no-cache ruby ruby-io-console ruby-json && \
    gem install itamae rake serverspec --no-ri --no-rdoc

COPY cookbooks cookbooks
COPY roles roles
COPY serverspec/Rakefile Rakefile
COPY serverspec/.rspec .rspec
COPY serverspec/spec spec

CMD ["tail", "-f", "/dev/null"]
