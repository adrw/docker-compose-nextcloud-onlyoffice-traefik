# docker-compose-nextcloud-onlyoffice-traefik

Docker Compose configuration for a Nextcloud, OnlyOffice, Traefik2, MariaDB server

# Getting Started

```
VOLUME_PATH=${full path to nextcloud instance folder with trailing slash}
mkdir ${VOLUME_PATH}app_data ${VOLUME_PATH}document_data ${VOLUME_PATH}document_log ${VOLUME_PATH}mysql_data
VOLUME_PATH=${full path to nextcloud instance folder with trailing slash} docker-compose up -d
```
