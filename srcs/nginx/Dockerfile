FROM alpine:3.11

LABEL maintainer="jaeskim <jaeskim@student.42seoul.kr>"

RUN apk update && \
	apk add --no-cache \
	nginx openssl openssh bash

RUN adduser -D -g 'www' www && \
	mkdir /run/nginx /www && \
	chown -R www:www /var/lib/nginx /run/nginx /www

# TODO: telegraf 설치하여 적용하기
# TODO: ssh 설정

COPY entrypoint.sh /
CMD /entrypoint.sh
