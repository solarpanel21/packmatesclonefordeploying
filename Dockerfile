FROM php:8.2-apache-bullseye
RUN a2dismod mpm_event mpm_worker 2>/dev/null || true && a2enmod mpm_prefork
RUN docker-php-ext-install mysqli
RUN echo "allow_url_fopen = On" >> /usr/local/etc/php/php.ini
COPY . /var/www/html/
