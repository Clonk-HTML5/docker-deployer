FROM ubuntu:14.10

ENV DEBIAN_FRONTEND=noninteractive \
    TERM=xterm

RUN apt-get update -y \
    && apt-get install -y \
        curl \
        git \
        php5-cli \
    && rm -rf /var/lib/apt/lists/*

RUN curl -Ss https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && composer require deployer/deployer:^3.0 deployphp/recipes:~3.0 \
    && composer clear-cache
