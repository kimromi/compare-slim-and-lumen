FROM php:7.3.3-apache

RUN apt update -qq >/dev/null 2>&1 && apt install -y unzip procps >/dev/null 2>&1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD composer install
ENTRYPOINT ["./request.sh"]
