FROM debian:jessie-slim

# Prepare system
RUN apt-get update \
    && apt-get -y --force-yes install curl wget

# Update source list
RUN curl https://www.dotdeb.org/dotdeb.gpg | apt-key add - \
    && echo 'deb http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list \
    && echo 'deb-src http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list \
    && apt-get update

# Install PHP7.0
RUN apt-get install -y --force-yes php7.0
RUN apt-get install -y --force-yes php7.0-fpm
RUN apt-get install -y --force-yes php7.0-xml
RUN apt-get install -y --force-yes php7.0-mysql

RUN echo "listen = 9000" >> /etc/php/7.0/fpm/pool.d/www.conf

WORKDIR /var/www
EXPOSE 9000

CMD ["php-fpm7.0", "-F"]