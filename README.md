# docker-compose-nextcloud-onlyoffice-traefik

Docker Compose configuration for a Nextcloud, OnlyOffice, Traefik2, MariaDB server

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

Todos
Probably easier to just connect to server over some web protocol vs local + unix permissions?
