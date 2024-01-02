FROM ruby:bullseye

RUN pwd

COPY . /blog

WORKDIR /blog

ENTRYPOINT ["./entrypoint.sh"]
