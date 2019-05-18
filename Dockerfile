FROM ruby:2.5

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN gem install bundler

ARG SECRET_KEY=useyourownsecretwhenbuildingandrunning
ENV SECRET_KEY_BASE ${SECRET_KEY}
ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
ENV BUNDLER_VERSION 2.0.1
RUN bundle config --global frozen 1
RUN bundle install --without development test

COPY . /usr/src/app
RUN bundle exec rake db:setup

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]