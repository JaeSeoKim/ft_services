FROM alpine:3.11

LABEL maintainer="jaeskim <jaeskim@student.42seoul.kr>"

# install dependency
RUN apk update && \
	apk add --no-cache \
	nginx openssl 

RUN adduser -D -g 'www' www && \
	mkdir /run/nginx /www && \
	chown -R www:www /var/lib/nginx /run/nginx /www

# setup SSL
RUN openssl genrsa -out ft_server.localhost.key 4096; \
	openssl req -x509 -nodes -days 365 \
	-key ft_server.localhost.key \
	-out ft_server.localhost.crt \
	-subj "/C=KR/ST=SEOUL/L=Gaepo-dong/O=42Seoul/OU=jaeskim/CN=localhost"; \
	chmod 644 ft_server.localhost.*; \
	mv ft_server.localhost.crt /etc/ssl/certs/;	\
	mv ft_server.localhost.key /etc/ssl/private/; 

# TODO: telegraf 설치하여 적용하기

EXPOSE 80/tcp 443/tcp

COPY entrypoint.sh /
CMD /entrypoint.sh
