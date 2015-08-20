FROM centos:centos6.6
# Install useful packages
RUN yum -y update && \
  yum -y install sudo openssh-server openssh-clients openssl-devel which tar m4

WORKDIR /opt

RUN curl http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.rpm -o java.rpm --cookie oraclelicense=accept-securebackup-cookie -L && \
  rpm -ivh java.rpm && \
  rm java.rpm
  
  
