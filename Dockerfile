FROM ruby:2-alpine

RUN apk add --no-cache git=2.30.2-r0 \
                       tini=0.19.0-r0 && \
    gem install bundler-audit:0.8.0

WORKDIR /app
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["bundle-audit"]
