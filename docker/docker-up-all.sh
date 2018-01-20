#!/bin/bash

echo "====== **** start up docker containers **** ======"

echo "======[Command] docker-compose up"
docker-compose up -d

echo "====== **** wait for redmine starting **** ======"
finish_str="INFO  WEBrick::HTTPServer#start: pid=1 port=3000"
redmine_log_file="redmine.log"
while :
do
	docker logs redmine >& ${redmine_log_file}
	if [[ $(cat ${redmine_log_file} | tail -n 1) =~ ${finish_str} ]]; then
		echo "[INFO] redmine is ready"
		break;
	else
		sleep 10
	fi
done

echo "====== **** install redmine plugin **** ======"
redmine/install-redmine-plugin.sh redmine

echo "[INFO] restart redmine"
echo "======[Command] docker-compose restart redmine"
docker-compose restart redmine

echo "====== **** docker container is ready **** ======"
