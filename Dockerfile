FROM centos:centos7.3.1611
# Install useful packages
RUN yum -y update && \
  yum -y install sudo openssh-server openssh-clients openssl-devel which tar m4

WORKDIR /opt

# Install JDK 8u131
RUN curl http://download.oracle.com/otn-pub/java/jdk/8u131-b11/jdk-8u131-linux-x64.rpm -o java.rpm --cookie oraclelicense=accept-securebackup-cookie -L && \
  rpm -ivh java.rpm && \
  rm java.rpm
  
# Install log stash forwarder 0.4.0
RUN mkdir /opt/forwarder && \
  curl https://download.elastic.co/logstash-forwarder/binaries/logstash-forwarder_linux_amd64 -o /opt/forwarder/logstash-forwarder && \
  chmod +x /opt/forwarder/logstash-forwarder
  
  
