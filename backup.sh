#!/usr/bin/env bash

now=$(date +"%H%M%S_%d-%m-%Y")
docker run     --rm --entrypoint ""     -v /opt/backup:/backup  --network 05-virt-04-docker-in-practice-shvirtd-example-python_backend    schnitzler/mysqldump     mysqldump --opt -h db -u ${MYSQL_USER} -p${MYSQL_PASSWORD} "--result-file=/backup/${now}_virtd.sql" virtd
