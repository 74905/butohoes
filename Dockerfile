FROM ruby:2.6.3
RUN apt-get update
RUN apt-get install -y \
  imagemagick \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn
WORKDIR /buthoes
COPY Gemfile Gemfile.lock /buthoes/
RUN bundle install