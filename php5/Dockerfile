FROM php:5.6.40-apache

RUN apt update -qq >/dev/null 2>&1 && apt install -y unzip procps >/dev/null 2>&1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ENTRYPOINT ["./request.sh"]
