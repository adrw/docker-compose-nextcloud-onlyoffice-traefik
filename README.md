# docker-compose-nextcloud-onlyoffice-traefik

Docker Compose configuration for a Nextcloud, OnlyOffice, Traefik2, MariaDB server

# Getting Started

```
mkdir -p ${INSTANCE_PATH}app_data ${INSTANCE_PATH}mysql_data
INSTANCE_PATH=${path where nextcloud instance is = /volume1/docker/nextcloud/instance/} EXTERNAL_PATH=${ds volume path = /volume1/} COMPOSE_HTTP_TIMEOUT=3600 docker-compose up -d
```

# DS

```
sudo INSTANCE_PATH=/volume1/docker/nextcloud/instance/ EXTERNAL_PATH=/volume1/ COMPOSE_HTTP_TIMEOUT=3600 docker-compose up -d
```

Todos
Probably easier to just connect to server over some web protocol vs local + unix permissions?
