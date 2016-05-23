FROM alpine

RUN apk update && apk upgrade
RUN apk add --no-cache ruby ruby-io-console ruby-json
RUN gem install itamae rake serverspec --no-ri --no-rdoc

COPY . /usr/local/provisioning

CMD ["tail", "-f", "/dev/null"]
