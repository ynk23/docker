FROM debian:latest

MAINTAINER yuta

WORKDIR /srv/redmine/plugins
# install tools
RUN apt-get -y update
RUN apt-get install -y git

# add plugin install script
ADD plugins-install.sh /opt/plugins-install.sh
RUN chmod -R 555 /opt/*

# plugin install to
VOLUME /srv/redmine/plugins

# set env for install script
ENV http_proxy ${http_proxy}
ENV https_proxy ${https_proxy}
ENV no_proxy ${no_prooxy}

# start
CMD ["/opt/plugins-install.sh"]

#WORKDIR /usr/src/redmine/plugins
#RUN git clone https://github.com/suer/redmine_oauth_provider.git
#RUN bundle install
#RUN rake redmine:plugins:migrate RAILS_ENV=production
