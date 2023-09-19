FROM php:7.2-apache

ARG WEB_USER=www-data
ARG WEB_PRJ_DIR=/var/www/html/
ARG SERVER_NAME=www.example.com
ARG SERVER_ADMIN=webmaster@localhost

# Install php extensions
RUN docker-php-ext-install pdo pdo_mysql

# Configure apache2
RUN sed -ri -e "s!/var/www/html!${WEB_PRJ_DIR}!g" /etc/apache2/sites-available/000-default.conf
RUN sed -ri -e "s!#ServerName www.example.com!ServerName $SERVER_NAME!g" /etc/apache2/sites-available/000-default.conf
RUN sed -ri -e "s!ServerAdmin webmaster@localhost!ServerAdmin $SERVER_ADMIN!g" /etc/apache2/sites-available/000-default.conf

RUN a2enmod rewrite

# Copy projet and start composer install (vendor install)
USER ${WEB_USER}
# COPY --chown=${WEB_USER}:${WEB_USER} . ${WEB_PRJ_DIR}
# WORKDIR ${WEB_PRJ_DIR}

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
