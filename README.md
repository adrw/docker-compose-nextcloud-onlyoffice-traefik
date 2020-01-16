# docker-compose-nextcloud-onlyoffice-traefik

Docker Compose configuration for a Nextcloud, OnlyOffice, Traefik2, MariaDB server

# Getting Started

```
$ COMPOSE_HTTP_TIMEOUT=3600 docker-compose up -d
$ NEWUID=$(id -u $(whoami)) NEWGID=$(id -g $(whoami)) ./set_configuration.sh
```

# DS

```
$ COMPOSE_HTTP_TIMEOUT=3600 docker-compose up -d
$ sudo NEWUID=$(id -u $(whoami)) NEWGID=$(id -g $(whoami)) ./set_configuration.sh
```

Todos
Probably easier to just connect to server over some web protocol vs local + unix permissions?
