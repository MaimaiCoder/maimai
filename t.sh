#! /bin/bash

source ./parseIni.sh

MAX_ZONE=$(parseIni zone.ini $1 max_zone)
PHP=$(parseIni zone.ini $1 PHP)
DIR=$(parseIni zone.ini $1 DIR)

if [ ! $PHP ] || [ ! $DIR ]
then
    echo 'php or file dir is not exist!'
    exit
fi

echo 'start:'
cd ${DIR};${PHP} index.php $1 $2 $3 $4
echo 'end'
