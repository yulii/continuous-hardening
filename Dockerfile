FROM alpine

ENV work_dir /usr/local/provisioning

RUN apk update && apk upgrade
RUN apk add ruby ruby-io-console ruby-json
RUN gem install itamae rake serverspec --no-ri --no-rdoc

COPY . ${work_dir}

RUN itamae local ${work_dir}/roles/ci.rb

RUN rm -rf /var/cache/apk/*

