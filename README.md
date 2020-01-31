# docker-compose-nextcloud-onlyoffice-traefik

Docker Compose configuration for a Nextcloud, OnlyOffice, Traefik2, MariaDB server

Note: the repo contains two approaches

- linuxserver: Uses the LinuxServer.io base image with the goal of supporting Docker volume bind mount with matching host permissions. Example: run on a Synology home server where the Nextcloud admin user in Docker has matching gid/uid to a Synology user so that all file access fits within both Synology and NextCloud permissions.
- nextcloud-fpm-alpine: Uses Nextcloud's base image with additional configuration to add OnlyOffice, Redis, and MariaBD. Binding a local volume for data or config **will not** make that data accessible by a host user and is only used by the Docker Nextcloud user.

# Getting Started

```
$ COMPOSE_HTTP_TIMEOUT=3600 docker-compose up -d
$ NEWUID=$(id -u $(whoami)) NEWGID=$(id -g $(whoami)) ./set_configuration.sh
```

# DS

```
$ sudo COMPOSE_HTTP_TIMEOUT=3600  APP_PATH=/volume1/docker/nextcloud/instance/ EXTERNAL_PATH=/volume1/ docker-compose down -d
$ sudo NEWUID=$(id -u nextcloud-admin) NEWGID=$(id -g nextcloud-admin) ./set_configuration.sh
```
