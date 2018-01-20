##----------##
#            #
#   Docker   #
#            #
##----------##
how to execute docker under proxy.
1. sudo systemctl stop docker.service
2. sudo systemctl set-environment HTTP_PROXY=http://<ID>:<PASS>@<host>:<port>
3. sudo systemctl start docker.service

##---------##
#           #
#   shell   #
#           #
##---------##
how to execute network command (e.g. wget, curl, yum) under proxy.
* setting proxy in ~/.*rc` file ( `* is wget or curl or net )
