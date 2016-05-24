FROM alpine

ENV workdir /usr/local/provisioning
WORKDIR ${workdir}
COPY . ${workdir}

RUN apk update && apk upgrade
RUN apk add --no-cache ruby ruby-io-console ruby-json
RUN gem install itamae rake serverspec --no-ri --no-rdoc

CMD ["tail", "-f", "/dev/null"]
