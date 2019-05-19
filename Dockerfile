FROM ruby:2.5

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN gem install bundler

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true
ENV BUNDLER_VERSION 2.0.1
COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle config --global frozen 1
RUN bundle install --without development test

COPY . /usr/src/app/
ENTRYPOINT /usr/src/app/docker-entrypoint.sh

EXPOSE 3000