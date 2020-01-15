# docker-compose-nextcloud-onlyoffice-traefik

Docker Compose configuration for a Nextcloud, OnlyOffice, Traefik2, MariaDB server

# Getting Started

```
NEWUID=$(id -u $(whoami)) NEWGID=$(id -g $(whoami)) COMPOSE_HTTP_TIMEOUT=3600 docker-compose up -d
```

# DS

```
sudo NEWUID=$(id -u $(whoami)) NEWGID=$(id -g $(whoami)) COMPOSE_HTTP_TIMEOUT=3600 docker-compose up -d
```

Todos
Probably easier to just connect to server over some web protocol vs local + unix permissions?
