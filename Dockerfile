FROM ruby:2.5-alpine

ENV LANG C.UTF-8
ENV ROOT_PATH /app

RUN mkdir $ROOT_PATH
WORKDIR $ROOT_PATH

RUN apk add --no-cache \
      bash \
      git \
      openssh \
      ruby-json \
      tzdata \
      sqlite-dev \
      nodejs \
      yaml

COPY Gemfile $ROOT_PATH/Gemfile
COPY Gemfile.lock $ROOT_PATH/Gemfile.lock

RUN apk add --no-cache --virtual=.build-dependencies \
      build-base \
      curl-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      ruby-dev \
      yaml-dev \
      zlib-dev && \
    bundle install -j4 && \
    apk del .build-dependencies

COPY . $ROOT_PATH

EXPOSE 3000
