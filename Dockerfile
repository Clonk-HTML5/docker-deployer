FROM ubuntu:14.04

ENV DEBIAN_FRONTEND=noninteractive \
    TERM=xterm 

RUN apt-get update -y \
    && apt-get install -y \
        curl \
        git \
        php7.0-cli \
    && rm -rf /var/lib/apt/lists/*

RUN curl -Ss https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && composer require deployer/deployer:^6.0.3 \
    && composer require deployer/recipes:^6.0.1 \
    && composer clear-cache
