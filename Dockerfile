FROM ruby:2.7.4-alpine

ENV APP /app

WORKDIR $APP

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
      build-base \
      less \
      postgresql-client \
      postgresql-dev \
      tzdata \
      gcompat \
      nodejs \
      yarn \
      shared-mime-info && \
    bundle config set force_ruby_platform true
