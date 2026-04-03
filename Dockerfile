FROM webdevops/php-apache:8.2
RUN docker-php-ext-install mysqli
RUN echo "allow_url_fopen = On" >> /usr/local/etc/php/php.ini
COPY . /var/www/html/
