#!/bin/bash

set -x

# Configure Nextcloud
docker exec -u www-data nextcloud_app php occ --no-warnings config:system:set trusted_domains 0 --value="nextcloud_nginx"
docker exec -u www-data nextcloud_app php occ --no-warnings config:system:set trusted_domains 1 --value="${LOCAL}" # local address
docker exec -u www-data nextcloud_app php occ --no-warnings config:system:set trusted_domains 2 --value="${DOMAIN}" # remote address

docker exec -u www-data nextcloud_app php occ --no-warnings app:install onlyoffice

docker exec -u www-data nextcloud_app php occ --no-warnings config:system:set onlyoffice DocumentServerUrl --value="/ds-vpath/"
docker exec -u www-data nextcloud_app php occ --no-warnings config:system:set onlyoffice DocumentServerInternalUrl --value="http://nextcloud_onlyoffice/"
docker exec -u www-data nextcloud_app php occ --no-warnings config:system:set onlyoffice StorageUrl --value="http://nextcloud_nginx/"
