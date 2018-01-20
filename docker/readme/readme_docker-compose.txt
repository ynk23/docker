latest docker-compose version is 1.6.2

## isntall command
$ sudo -i
# mkdir -p /opt/bin
# wget https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m`
#   or curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > docker-compose
# mv docker-compose-*** /opt/bin/docker-compose
# chown root:root /opt/bin/docker-compose
# chmod +x /opt/bin/docker-compose
# docker-compose --version

## docker-compose.yml
services
	mysql(for Redmine)
	redmine
	jenkins
	maildev

###########################
## reference
#     official     : https://docs.docker.com/compose/compose-file/
#        in JP     : http://docs.docker.jp/compose/compose-file.html
#     nonofficaial : http://qiita.com/zembutsu/items/9e9d80e05e36e882caaa
#
## base format
# +-----------+
# | version 1 |
# +-----------+
#  servce1:
#    image / build
#    options...
#  service2:
#  ...
#
# +-----------+
# | version 2 |
# +-----------+
#  version: '2'
#  services:
#    servise1:
#      image / build
#      options...
#    service2:
#    ...
#
## file version 2
# required :
#     docker  : 1.10.0 +
#     compose : 1.6.0 +
#
## check format
# $ docker-compose config
############################

docker-compose up -d
