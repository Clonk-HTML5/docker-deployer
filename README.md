## deployer Dockerfile


This repository contains **Dockerfile** of [deployer](http://deployer.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/igortimoshenko/docker-deployer/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/christianr/deployer-php-recipes/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull christianr/deployer-php-recipes`

   (alternatively, you can build an image from Dockerfile: `docker build -t="christianr/deployer-php-recipes" github.com/igortimoshenko/docker-deployer`)


### Usage

    docker run --rm -it -v $(pwd)/deploy.php:/deploy.php:ro christianr/deployer-php-recipes /vendor/bin/dep
