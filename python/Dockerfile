FROM centos:centos7

RUN yum update -y

# IUS 
RUN yum install -y epel-release
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm

# Nginx 
ADD nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum clean all
RUN yum makecache
RUN yum install -y nginx

# Python
RUN yum install -y python36u python36u-devel

# pip
RUN yum install -y python36u-pip
RUN pip3.6 install --upgrade pip

# uWSGI 需要依赖 gcc
RUN yum install -y gcc wget nano

# uWSGI 
RUN pip3.6 install uwsgi

# Django
RUN pip3.6 install Django==2.1

RUN yum install -y supervisor

# supervisord
RUN sed -i 's/nodaemon=false/nodaemon=true/g' /etc/supervisord.conf

EXPOSE 3306 80 22
ENTRYPOINT ["/usr/bin/supervisord" , "-c" , "/etc/supervisord.conf"] 
