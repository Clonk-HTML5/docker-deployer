#
# deployer Dockerfile
#
# https://github.com/igortimoshenko/docker-deployer
#

# Pull base image.
FROM ubuntu:14.10

# Set environment variables.
ENV DEBIAN_FRONTEND=noninteractive \
    TERM=xterm

# Install needed packages.
RUN apt-get update -y \
    && apt-get install -y \
        curl \
        git \
        php5-cli \
    && rm -rf /var/lib/apt/lists/*

# Install Composer & Deployer.
RUN curl -Ss https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && composer require deployer/deployer:^3.0 deployphp/recipes:~3.0 \
    && composer clear-cache
