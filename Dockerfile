FROM centos:centos6
# Install Java and other useful packages
RUN yum -y update && \
  yum -y install java-1.7.0-openjdk-devel.x86_64 sudo openssh-server openssh-clients openssl-devel which tar m4
