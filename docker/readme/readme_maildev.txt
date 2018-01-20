usage : maildev
MailDev is a simple way to test your projects' emails during development with an easy to use web interface that runs on your machine. 

  $ docker pull djfarrelly/maildev
  $ docker run -d -p 1080:80 -p 1025:25 --name maildev djfarrelly/maildev

web URL : http://djfarrelly.github.io/MailDev/

settings in virtual box
	port forwarding
		HOST			GUEST
		127.0.0.1:1080	-	1080
		127.0.0.1:1025	-	1025

access Web GUI : http://localhost:1080

get SMTP addr
  # if use docker
  $ docker inspect --format '{{ .NetworkSettings.Gateway }}' maildev
      return docker gateway ip address (e.g. 172.18.0.1)
  or
  # if use docker-compose
  $ docker inspect --format '{{ .NetworkSettings.Networks.docker_default.Gateway }}' docker_maildev_1
      return docker gateway ip address (e.g. 172.19.0.1)

  SMPT server	: docker gateway ip address (e.g. 172.18.0.1) 
  port		: 1025
