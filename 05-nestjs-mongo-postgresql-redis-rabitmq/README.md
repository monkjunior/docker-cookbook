# Docker Container Superfanz

A one paragraph description about the container.

## Getting Started

These instructions will cover usage information and for the docker container

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Setup local development environtment

1. Clone docker repository: `git clone --recursive git@git.savvycom.vn:superfanz/superfanz-docker.git`
2. Go to `superfanz-docker` folder: `cd superfanz-docker` and execute command `./init-submodules.sh`
3. Go to `core, social` folder and change git branch to dev: `git checkout dev`
4. Copy `.env.example` to your `.env` file in following folders: `superfanz-docker, core, social and other submodules`
5. Go to `superfanz-docker` folder execute following command: `docker-compose up`
6. Open `superfanz-docker` with any project editor (VSC, WebStom, ...)

### Debugging mode (only use if you are clear about this, can ignore this for normal development)

1. Use `docker-compose -f docker-compose-debug.yml up` instead of `docker-compose up`
2. Open Chrome and go to `chrome://inspect/`
3. Make sure `Discover network targets Add target` is checked
4. Open `Configure...` to add `localhost:9228` and `localhost:9229`
4. Open dedicated DevTools for Node to start debugging
