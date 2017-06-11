FROM ruby:2.4.0

WORKDIR /build
COPY ./ .

RUN bundle install
RUN bundle exec jekyll build

FROM nginx

COPY --from=0 /build/_site /usr/share/nginx/html
