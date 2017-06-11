FROM ruby:2.4.1-alpine

RUN apk --no-cache update && \
    apk --update add build-base libffi-dev && \
#    apk --no-cache add ruby-dev && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*
