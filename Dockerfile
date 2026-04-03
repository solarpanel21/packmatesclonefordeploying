FROM php:8.2-apache
RUN rm -f /etc/apache2/mods-enabled/mpm_*.load /etc/apache2/mods-enabled/mpm_*.conf
RUN ln -s /etc/apache2/mods-available/mpm_prefork.load /etc/apache2/mods-enabled/mpm_prefork.load
RUN ln -s /etc/apache2/mods-available/mpm_prefork.conf /etc/apache2/mods-enabled/mpm_prefork.conf
RUN docker-php-ext-install mysqli
RUN echo "allow_url_fopen = On" >> /usr/local/etc/php/php.ini
COPY . /var/www/html/
