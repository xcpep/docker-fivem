# FiveM Server Container

[![Docker Pulls](https://img.shields.io/docker/pulls/greenleafrp/fivem.svg)](https://hub.docker.com/r/greenleafrp/fivem/)
[![Docker Stars](https://img.shields.io/docker/stars/greenleafrp/fivem.svg)](https://hub.docker.com/r/greenleafrp/fivem/)
[![Docker Build](https://img.shields.io/docker/automated/greenleafrp/fivem.svg)](https://hub.docker.com/r/greenleafrp/fivem/)
[![Docker Build Status](https://img.shields.io/docker/build/greenleafrp/fivem.svg)](https://hub.docker.com/r/greenleafrp/fivem/)

[FiveM](https://fivem.net/) server running on [Alpine Linux](https://hub.docker.com/_/alpine/).

## Configuration

See [example directory](https://github.com/greenleafrp/docker-fivem/tree/master/example) for sample config file.

## Quickstart

```yml
fivem:
  image: greenleafrp/fivem

  volumes:
    # You must provide a server config file
    - ./server.cfg:/srv/server.cfg

    - ./resources:/srv/resources

  ports:
    - "30120:30120/tcp"
    - "30120:30120/udp"
```
