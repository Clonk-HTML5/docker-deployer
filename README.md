## deployer Dockerfile


This repository contains **Dockerfile** of [deployer](http://deployer.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/igortimoshenko/docker-deployer/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [RobLoach/docker-composer](https://github.com/RobLoach/docker-composer)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/igortimoshenko/docker-deployer/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull igortimoshenko/docker-deployer`

   (alternatively, you can build an image from Dockerfile: `docker build -t="igortimoshenko/docker-deployer" github.com/igortimoshenko/docker-deployer`)


### Usage

    docker run --rm -it -v $(pwd)/deploy.php:/deploy.php:ro igortimoshenko/docker-deployer /vendor/bin/dep
