FROM ubuntu

MAINTAINER thangtn <thang.tn@neo-lab.vn>

RUN apt-get update -y && \
	apt-get install -y \
	php-fpm php-mysql

VOLUME ["/var/www/html"]
WORKDIR /var/www/html
EXPOSE 8080

CMD ["php7-fpm.0"]

#docker run -p 8080:81 -d -v $(pwd):/var/www/html thangtn/php php -S 0.0.0.0:81