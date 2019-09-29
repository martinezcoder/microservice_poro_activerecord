FROM ruby:2.6.3

RUN gem install bundler -v 2.0.2
RUN gem update --system


RUN mkdir app/
WORKDIR /app

ADD ./ ./

RUN bundle

