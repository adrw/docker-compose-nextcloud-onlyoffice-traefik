#!/bin/bash

set -x

# Configure Nextcloud Permissions
OLDUID=$(docker exec nextcloud_app id -u www-data)
OLDGID=$(docker exec nextcloud_app id -g www-data)
echo Updating www-data uid=$NEWUID gid=$NEWGID

docker exec nextcloud_app usermod -u $NEWUID www-data
docker exec nextcloud_app groupmod -g $NEWGID www-data
docker exec nextcloud_app find / -user $OLDUID -exec chown -h $NEWUID {} \;
docker exec nextcloud_app find / -group $OLDGID -exec chgrp -h $NEWGID {} \;
docker exec nextcloud_app usermod -g $NEWGID www-data
# From Nextcloud docs
# docker exec nextcloud_app chown -R www-data:www-data /var/html
# docker exec nextcloud_app chmod -R 0750 /var/html

UPDATED_UID=$(docker exec nextcloud_app id -u www-data)
UPDATED_GID=$(docker exec nextcloud_app id -g www-data)
echo Confirm www-data uid=$UPDATED_UID gid=$UPDATED_GID