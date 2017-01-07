FROM alpine:3.5

MAINTAINER Yifan Gao <docker@yfgao.com>

ENV ASSETS_DIR="/opt/smartentry/HEAD"

RUN apk add --no-cache bash tar

COPY smartentry.sh /sbin/smartentry.sh

ENTRYPOINT ["/sbin/smartentry.sh"]

CMD ["run"]
