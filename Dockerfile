FROM ruby:2.7.3

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN gem install bundler:2.2.15 && bundle install

COPY . /usr/src/app

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV PUMA_PORT 4567

RUN touch /etc/inittab

EXPOSE $PUMA_PORT

ENTRYPOINT ["./run.sh"]
