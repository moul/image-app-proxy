## -*- docker-image-name: "armbuild/ocs-app-openvpn:utopic" -*-
FROM armbuild/ocs-distrib-ubuntu:utopic
MAINTAINER Online Labs <opensource@ocs.online.net> (@online_en)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter

# Install packages
RUN apt-get -q update && \
    apt-get -y -q upgrade && \
    apt-get install -y -q \
	curl \
	haproxy \
	iptables \
	iptables-persistent \
	nginx \
	squid \
	uuid \
    && apt-get clean

# Patch rootfs
#ADD ./patches/etc/ /etc/

# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
