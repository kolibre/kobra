FROM ruby:2.6.10

ARG BUNDLER_VERSION=2.0.2

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN gem install bundler -v ${BUNDLER_VERSION}

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true
ENV BUNDLER_VERSION ${BUNDLER_VERSION}
COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle config --global frozen 1
RUN bundle install --without development test

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

COPY . /usr/src/app/
ENTRYPOINT /usr/src/app/docker-entrypoint.sh

EXPOSE 3000