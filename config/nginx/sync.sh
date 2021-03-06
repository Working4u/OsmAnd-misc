#!/bin/bash
function sync {
        echo $(date) Sync $1 >> ~/rsync.log
        /root/rsync-3.1.2/rsync -og --chown=www-data:www-data --delete --progress --recursive --times --log-file ~/rsync.log \
        jenkins@download.osmand.net:/var/www-download/$1 /media/content/$1
        # chown -R www-data:www-data $1
}
#sync /mnt/hdd1/ /mnt/media/

sync indexes/
# sync hillshade/
# sync srtm-countries/
sync road-indexes/
sync wiki/
sync wikivoyage/
# sync releases/
# sync osm-releases/
sync aosmc/