FROM ruby:bullseye as cache

WORKDIR /blog

COPY org/jekyll/Gemfile org/jekyll/Gemfile.lock /blog

RUN gem update bundler \
    && bundle update \
    && bundle install


FROM cache

COPY org/jekyll/ /blog/
COPY github.sh /


CMD ["bundle", "exec", "jekyll", "--help"]
