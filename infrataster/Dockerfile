FROM alpine

WORKDIR /usr/local/provisioning

RUN set -x && \
    apk update && \
    apk upgrade && \
    apk add --no-cache ruby && \
    gem install infrataster rake --no-ri --no-rdoc

# COPY Rakefile .
# COPY spec .

CMD ["tail", "-f", "/dev/null"]
