FROM alpine:3.5
RUN apk add --no-cache curl bash
RUN curl -sfLS https://import.pw > /usr/bin/import && chmod +x /usr/bin/import
COPY . .
RUN sh /usr/bin/import ./string_test.sh
RUN bash /usr/bin/import ./string_test.sh
