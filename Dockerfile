FROM php:7.4.4-fpm-alpine

WORKDIR /var/www/html

# RUN docker-php-ext-install pgsql pdo pdo_pgsql
RUN set -ex \
  && apk --no-cache add \
    postgresql-dev

RUN docker-php-ext-install pdo pdo_pgsql