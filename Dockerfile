FROM composer/composer

RUN composer require deployer/deployer:^3.0 deployphp/recipes:~3.0 \
    && composer clear-cache
