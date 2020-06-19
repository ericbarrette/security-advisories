FROM composer:latest
WORKDIR /app
COPY . .
RUN composer install
RUN php -d memory_limit=-1 validator.php
