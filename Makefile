DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-app-proxy
VERSION =		latest
VERSION_ALIASES =	14.10 utopic
TITLE =			Proxy
DESCRIPTION =		Proxy - Haproxy, Nginx, Squid
SOURCE_URL =		https://github.com/online-labs/image-app-proxy


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
