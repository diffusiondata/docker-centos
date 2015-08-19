FROM centos:centos6.6
# Install useful packages
RUN yum -y update && \
  yum -y install sudo openssh-server openssh-clients openssl-devel which tar m4
