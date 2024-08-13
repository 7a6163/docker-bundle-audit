FROM ruby:3-alpine

RUN apk add --no-cache git=2.45.2-r0 \
                       tini=0.19.0-r3 && \
    gem install bundler-audit:0.9.1

WORKDIR /app
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["bundle-audit"]
