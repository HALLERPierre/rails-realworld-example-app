FROM ruby:2.2.2

RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /srv

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY . /srv
