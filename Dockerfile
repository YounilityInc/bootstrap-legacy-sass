FROM ruby:2.4.1

# app dependencies
RUN apt-get update -qq && apt-get install -y build-essential

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs

ENV APP_HOME /opt/gem
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

# ADD . $APP_HOME/

# RUN bundle
