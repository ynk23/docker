#!/bin/bash
set -x

container_name=$1

docker exec -t ${container_name} /bin/bash -c '\
	cd plugins &&\
	git clone https://github.com/suer/redmine_oauth_provider.git &&\
	bundle install &&\
	rake redmine:plugins:migrate RAILS_ENV=production'
